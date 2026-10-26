# URSA v3: roteiro de execução e lista de tarefas

Tudo a partir de `exp/output-stationary-v3`. O 02, o 03 e o 04 pulam o que
já existe: apague o IP/bitstream antigo, ou use `FORCE=1` no 04.

Legenda: `[x]` feito, `[~]` em andamento, `[ ]` pendente.
Atualizado em 26/10/26 (revisão 2: estado final das campanhas e regras do artigo).

## Visão geral

| Etapa | bram 100 | bram 123 | ocm 100 | ocm 123 | hybrid 100 | hybrid 123 |
|---|---|---|---|---|---|---|
| HLS (02)                | x | x | x (mesmo IP) | x (mesmo IP) | x (mesmo IP) | x (mesmo IP) |
| Bitstreams (03)         | x | x | x | x | x | x |
| free                    | x | x | x | x | x | x |
| bench                   | x | x | x | x | x | x |
| cnn (SAT-6)             | x | x | x | x | x | x |
| layers (netmendes_mxm)  | x | x | x | x | x | x |
| net (redes do Mendes)   | x | x | x | x | x | x |

Campanha completa: 4 tamanhos x 3 layouts x 2 clocks = 24 configurações,
17 redes do Mendes e a SAT-6 em todas elas.

O IP de HLS não depende do layout: o mesmo IP de 100 MHz serve bram, ocm e
hybrid a 100 MHz, e o de 123 MHz serve os três a 123 MHz. Só o block design
muda (bd_bram.tcl, bd_ocm.tcl, bd_hybrid.tcl).

150 MHz: HLS e bitstreams bram foram feitos, mas o WNS ficou negativo em
todos os tamanhos (2x2 -1,010; 4x4 -0,897; 8x8 -0,220; 16x16 -2,873 ns).
Fora do artigo. Não refazer para ocm e hybrid.

WNS a 123 MHz, bram: 2x2 -0,181; 4x4 +0,130; 8x8 +0,037; 16x16 -1,308 ns
(registro interno; ver as regras do artigo abaixo).

## Regras do artigo (ARC 2027), combinadas em 24-26/10/26

Estas regras substituem o que a versão anterior deste roteiro dizia sobre
123 MHz.

- Só entra o que rodou na placa e passou na verificação bit-exata. Entra
  tudo o que rodou e passou: as 24 configurações, nos dois clocks e nos
  quatro tamanhos.
- WNS e fechamento de timing não são reportados no artigo. (A dissertação,
  capítulo 8, continua registrando o WNS.)
- 150 MHz fica fora: não houve campanha na placa.
- Redes: `minivit_patternnet_base` e `minivit_resisc45_base` ficam fora do
  artigo (não passam na verificação bit-exata contra o golden do gerador).
  As outras 15 redes entram.
- Área: os recursos citados são sempre os do bitstream cujo desempenho está
  na mesma linha. Padrão das tabelas principais: bitstreams de 100 MHz
  (v3 8x8: 7.834 LUT; 16x16: 17.250 LUT). Linhas a 123 MHz usam os recursos
  do bitstream de 123 MHz (8x8: 7.874; 16x16: 17.280).
- v2 a 123 MHz: não existe bitstream de 123 MHz do v2. As medidas do v2 a
  123 MHz rodam o bitstream de 100 MHz com o FCLK0 subido em tempo de
  execução (`set_fclk0`). Os 771,6 FPS das notas de 27/09 do v2 8x8 são
  dessa condição (batem com os 769,8 da campanha final a 123 MHz). O v2
  a 100 MHz é 686,3 FPS. Nunca comparar v2 a 123 MHz com v3 a 100 MHz.
- Potência não é reportada.

## 0. Uma vez  [x]

```bash
# testes do Mendes no layout do v3 (gera vitis_component/netmendes a partir dos do v2)
python3 netmendes_v3/patch_runtime.py ../output-stationary-v2/vitis_component/netmendes \
    vitis_component/netmendes

# tabela de camadas (já vem gerada; rode de novo só se mudar as redes)
python3 bench_layers/gen_layers.py --netmendes vitis_component/netmendes \
    --out vitis_component/mxm-ursa/src/ursa_layers.h --csv bench_layers/layers.csv
```

Ambiente: o 04 precisa do compilador ARM do Vitis. Se o terminal já tiver
`XILINX_VITIS` definida sem o PATH completo, o 04 adiciona
`gnu/aarch32/lin/gcc-arm-none-eabi/bin` sozinho; se não achar, ele para e
pede `source /opt/Xilinx/Vitis/2023.2/settings64.sh`.

## 1. HLS e bitstreams BRAM, 100 e 123 MHz  [x]

```bash
./02_do_hls_all.sh && ./03_do_bitstreams.sh
PL_MHZ=123 ./02_do_hls_all.sh && PL_MHZ=123 ./03_do_bitstreams.sh
grep -H "wns_ns" bitstreams/*_summary.txt
```

As ELFs não dependem do clock: o FCLK0 vem do ps7_init do XSA de cada
bitstream. Só muda o `--hw-variant` no 05.

## 2. Suites free, bench, cnn e layers em BRAM  [x] 100  [x] 123

```bash
for modo in free bench cnn layers; do
  FORCE=1 MODE=$modo ./04_do_vitis.sh
  python3 05_run_board.py --mode $modo --sizes 2 4 8 16
  python3 05_run_board.py --mode $modo --sizes 2 4 8 16 \
      --variant vanilla --hw-variant vanilla-f123
done
```

Saídas: `results/times_<modo>_vanilla.csv` (100 MHz) e
`results/times_<modo>_vanilla_hw-vanilla-f123.csv` (123 MHz).

## 3. Redes do Mendes em BRAM  [x] 123  [x] 100

```bash
# 123 MHz
for n in $(ls vitis_component/netmendes/satellite/*_hwtest.cpp | xargs -n1 basename | sed 's/_hwtest.cpp//'); do
  FORCE=1 MODE=net NET=$n ./04_do_vitis.sh && \
  python3 05_run_board.py --mode net --net $n --sizes 2 4 8 16 --layouts bram \
      --variant vanilla --hw-variant vanilla-f123 --timeout 3600
done

# 100 MHz: as mesmas ELFs, sem FORCE e sem --hw-variant
for n in $(ls vitis_component/netmendes/satellite/*_hwtest.cpp | xargs -n1 basename | sed 's/_hwtest.cpp//'); do
  python3 05_run_board.py --mode net --net $n --sizes 2 4 8 16 --layouts bram --timeout 3600
done
```

Saídas: `results/times_net-<rede>_vanilla[_hw-vanilla-f123].csv` e o
`_layers.csv` correspondente, com o perfil por camada.

Falhas conhecidas:
- `minivit_patternnet_base` e `minivit_resisc45_base`: golden 0/32 também
  no ARM puro (v2), com os mesmos valores. O golden do gerador é que está
  inconsistente. Ficam fora do artigo (regra acima).
- `resnet18_patternnet_small`: no v2, ARM 32/32 e URSA 8x8 31/32 (imagem
  30, classe 16). No v3 passa 32/32 nas 24 configurações. A causa no v2
  não foi isolada.

## 4. Bitstreams OCM e HYBRID, 100 e 123 MHz  [x]

Os block designs leem as larguras das portas do IP, então aceitam o IP v3
sem mudança. Pode rodar no Vivado enquanto a placa está ocupada com a etapa 3.

```bash
MEM_LAYOUTS="ocm hybrid" ./03_do_bitstreams.sh
PL_MHZ=123 MEM_LAYOUTS="ocm hybrid" ./03_do_bitstreams.sh
grep -H "wns_ns" bitstreams/*_ocm_summary.txt bitstreams/*_hybrid_summary.txt
```

Anotar o WNS para a dissertação (o caminho pelo ACP é outro). O artigo não reporta WNS.

## 5. Suites free, bench, cnn e layers em OCM e HYBRID  [x] 100  [x] 123

Todas as ELFs usam a plataforma BRAM (`PLATFORM_LAYOUT=bram`, padrão); o
PS com ACP ligado vem do XSA de cada bitstream. O software já faz
flush/invalidate das janelas em OCM (bench, free, layers, CNN e redes).

Teste rápido antes do loop inteiro: `--mode bench --sizes 8 --layouts ocm hybrid`.
Se passar, a manutenção de cache está certa com o v3.

```bash
for modo in free bench cnn layers; do
  FORCE=1 MODE=$modo MEM_LAYOUTS="ocm hybrid" ./04_do_vitis.sh
  python3 05_run_board.py --mode $modo --sizes 2 4 8 16 --layouts ocm hybrid
  python3 05_run_board.py --mode $modo --sizes 2 4 8 16 --layouts ocm hybrid \
      --variant vanilla --hw-variant vanilla-f123
done
```

## 6. Redes do Mendes em OCM e HYBRID  [x] 100  [x] 123

```bash
for n in $(ls vitis_component/netmendes/satellite/*_hwtest.cpp | xargs -n1 basename | sed 's/_hwtest.cpp//'); do
  FORCE=1 MODE=net NET=$n MEM_LAYOUTS="ocm hybrid" ./04_do_vitis.sh && \
  python3 05_run_board.py --mode net --net $n --sizes 2 4 8 16 --layouts ocm hybrid --timeout 3600 && \
  python3 05_run_board.py --mode net --net $n --sizes 2 4 8 16 --layouts ocm hybrid \
      --variant vanilla --hw-variant vanilla-f123 --timeout 3600
done
```

## 7. Análise  [~]

Com tudo coletado (3 layouts x 2 clocks x 4 tamanhos):

```bash
python3 bench_layers/analyze.py results/times_layers_vanilla.csv --mhz 100
python3 bench_layers/analyze.py results/times_layers_vanilla_hw-vanilla-f123.csv --mhz 123.08
```

- v2 x v3 por rede e por layout (gemm e total).
- Perfil por camada: onde o runtime do Mendes perde tempo (transfer,
  epilogue, im2col). Na vgg16_resisc45_tiny 8x8 a 123 MHz, a GEMM é 13% do
  total; transfer 39%, epilogue 29%, im2col 18%.
- `us_gemm` é só o tempo das chamadas ao URSA; `us_xfer` inclui o que o
  runtime faz em volta (B e A para as janelas, C de volta, soma dos pedaços
  de M e, em OCM/hybrid, flush e invalidate).

Estado (26/10/26): consolidada em `URSA_resultados.xlsx` (confere com os
CSVs de `results/`) e no documento de bases do artigo do ARC (versão 6),
com roofline das três suítes nos três layouts, tabela v1/v2/v3 e
decomposição por estágio da SAT-6 e das 15 redes.

Até aqui a avaliação é do URSA em si, com o código das redes como veio do
gerador. A CNN SAT-6 já tem as melhorias de runtime (staging em DDR,
de-tile junto com o requant); ela fica fora da análise da etapa 8.

## 8. netmendes v2: melhorar o runtime das redes  [ ]  (depois da etapa 7)

Nova pasta `vitis_component/netmendes_v2`, sem mexer na v1, e um arquivo
`netmendes_v2/CHANGES.md` anotando cada mudança e o ganho medido.
Candidatos, pelo que o perfil da vgg16 mostrou:
- A residente nas janelas, em vez de reenviar pesos a cada chamada
  ("streamed per call").
- Chamadas maiores (hoje 16x72, 24x104); janelas maiores se o layout permitir.
- Acumular os pedaços de M no hardware, em vez de somar no ARM.
- Juntar o epilogue (requant) com o de-tile do C numa passada só.
- Staging de B em DDR antes do memcpy para a janela, como no cnn-sat-6.
- Corrigir no gerador (ViT-Research) o print de 32 bits do número de MACs.

Depois, rodar as redes de novo nos mesmos layouts e clocks e comparar
v1 x v2 do runtime.

## Fora da lista (opcional)

- Fechar timing a 150 MHz no 8x8 e a 123 MHz no 2x2 (precisa do caminho
  crítico dos relatórios).
- Porta C mais larga para o 16x16.
