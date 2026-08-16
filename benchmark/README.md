python3 gen_bench.py --outdir ./bench/uniform  --acc-bits 20 --auto-range --literal-max 32 --pattern uniform
python3 gen_bench.py --outdir ./bench/identity --acc-bits 20 --auto-range --literal-max 32 --pattern identity
python3 gen_bench.py --outdir ./bench/constant --acc-bits 20 --auto-range --literal-max 32 --pattern constant

# uniform — o experimento
- A e B com valores aleatórios em toda a faixa permitida. É o caso realista: cada elemento de C é uma soma de K produtos, todos diferentes, sem estrutura.
- Por que é o baseline: um bit-flip num PE se propaga para o acumulador e sobrevive até a saída, porque não há nada que o cancele. É a condição de máxima observabilidade de SDC — a cross-section medida aqui é a mais alta que você vai obter, e portanto a mais conservadora para reportar.

# identity — o diagnóstico
- A = matriz identidade, B aleatória. Como I·B = B, o resultado esperado é simplesmente C = B.
- Para que serve: você conhece o resultado correto sem precisar confiar em cadeia nenhuma de referência. Se C[i][j] ≠ B[i][j], você sabe exatamente qual elemento corrompeu, e a posição dele te diz qual PE ou qual caminho de dados falhou.
- E o mais importante: separa SDC de SEFI. Se o resultado sai completamente errado ou o acelerador trava, é falha funcional (SEFI — o controle, a máquina de estados, o DMA). Se sai quase todo certo com alguns elementos alterados, é corrupção de dados (SDC). Com dados uniformes essa distinção é difícil de fazer; com identidade é imediata.
- Um detalhe: como A tem só uns e zeros, a maior parte dos MACs é multiplicação por zero. Isso reduz a atividade lógica no array — então a cross-section aqui não é comparável à do uniform. Não use este para medir taxa; use para entender o mecanismo.

# constant — o controle negativo
- A = todos 1, B = todos 1. Então cada elemento de C é exatamente K.
- Para que serve: é o caso de mascaramento aritmético máximo. Todos os valores são idênticos, então muitos bit-flips produzem resultados que ainda parecem plausíveis, ou são absorvidos pela regularidade. A cross-section aqui deve ser a mais baixa dos três.
- O valor científico é ser o piso: se você observa SDC no constant na mesma taxa do uniform, algo está errado na sua medição — significa que a falha não vem dos dados, mas de algo estrutural (registrador de configuração, contador de laço, ponteiro de endereço). É o teste que valida a própria metodologia.
- Também é o caso em que um erro no controle aparece mais nitidamente, justamente porque o dado não gera ruído.