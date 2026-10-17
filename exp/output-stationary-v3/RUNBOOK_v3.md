# URSA v3: roteiro de execução e lista de tarefas

Tudo a partir de `exp/output-stationary-v3`. O 02, o 03 e o 04 pulam o que
já existe: apague o IP/bitstream antigo, ou use `FORCE=1` no 04.

Legenda: `[x]` feito, `[~]` em andamento, `[ ]` pendente.
Atualizado em 16/10/26.

## Visão geral

| Etapa | bram 100 | bram 123 | ocm 100 | ocm 123 | hybrid 100 | hybrid 123 |
|---|---|---|---|---|---|---|
| HLS (02)                | x | x | x (mesmo IP) | x (mesmo IP) | x (mesmo IP) | x (mesmo IP) |
| Bitstreams (03)         | x | x |   |   |   |   |
| free                    | x | x |   |   |   |   |
| bench                   | x | x |   |   |   |   |
| cnn (SAT-6)             | x | x |   |   |   |   |
| layers (netmendes_mxm)  | x | x |   |   |   |   |
| net (redes do Mendes)   |   | ~ |   |   |   |   |

O IP de HLS não depende do layout: o mesmo IP de 100 MHz serve bram, ocm e
hybrid a 100 MHz, e o de 123 MHz serve os três a 123 MHz. Só o block design
muda (bd_bram.tcl, bd_ocm.tcl, bd_hybrid.tcl).

150 MHz: HLS e bitstreams bram foram feitos, mas o WNS ficou negativo em
todos os tamanhos (2x2 -1,010; 4x4 -0,897; 8x8 -0,220; 16x16 -2,873 ns).
Fora do artigo. Não refazer para ocm e hybrid.

WNS a 123 MHz, bram: 2x2 -0,181; 4x4 +0,130; 8x8 +0,037; 16x16 -1,308 ns.
No artigo, a 123 MHz, só 4x4 e 8x8 entram como resultado. 2x2 e 16x16
rodam na placa e servem como dado, mas não como claim.

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

## 3. Redes do Mendes em BRAM  [~] 123  [ ] 100

```bash
# 123 MHz (em andamento)
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

Falhas conhecidas, que não são do URSA:
- `minivit_patternnet_base` e `minivit_resisc45_base`: golden 0/32 também
  no ARM puro (v2), com os mesmos valores. O golden do gerador é que está
  inconsistente; a acurácia fica certa. Valem para tempo.
- `resnet18_patternnet_small`: no v2, ARM 32/32 e URSA 8x8 31/32 (imagem
  30, classe 16). Divergência real do caminho do URSA, ainda sem causa.
  Conferir se o v3 repete.

## 4. Bitstreams OCM e HYBRID, 100 e 123 MHz  [ ]

Os block designs leem as larguras das portas do IP, então aceitam o IP v3
sem mudança. Pode rodar no Vivado enquanto a placa está ocupada com a etapa 3.

```bash
MEM_LAYOUTS="ocm hybrid" ./03_do_bitstreams.sh
PL_MHZ=123 MEM_LAYOUTS="ocm hybrid" ./03_do_bitstreams.sh
grep -H "wns_ns" bitstreams/*_ocm_summary.txt bitstreams/*_hybrid_summary.txt
```

Anotar o WNS: o caminho pelo ACP é outro, o timing a 123 MHz pode mudar.

## 5. Suites free, bench, cnn e layers em OCM e HYBRID  [ ] 100  [ ] 123

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

## 6. Redes do Mendes em OCM e HYBRID  [ ] 100  [ ] 123

```bash
for n in $(ls vitis_component/netmendes/satellite/*_hwtest.cpp | xargs -n1 basename | sed 's/_hwtest.cpp//'); do
  FORCE=1 MODE=net NET=$n MEM_LAYOUTS="ocm hybrid" ./04_do_vitis.sh && \
  python3 05_run_board.py --mode net --net $n --sizes 2 4 8 16 --layouts ocm hybrid --timeout 3600 && \
  python3 05_run_board.py --mode net --net $n --sizes 2 4 8 16 --layouts ocm hybrid \
      --variant vanilla --hw-variant vanilla-f123 --timeout 3600
done
```

## 7. Análise  [ ]

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
