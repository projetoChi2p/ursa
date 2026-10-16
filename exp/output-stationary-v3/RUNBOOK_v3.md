# URSA v3: roteiro de execução

Tudo a partir de `exp/output-stationary-v3`. O 02, o 03 e o 04 pulam o que
já existe: apague o IP/bitstream antigo, ou use `FORCE=1` no 04.

## 0. Uma vez

```bash
# testes do Mendes no layout do v3 (gera vitis_component/netmendes a partir dos do v2)
python3 netmendes_v3/patch_runtime.py ../output-stationary-v2/vitis_component/netmendes \
    vitis_component/netmendes

# tabela de camadas (já vem gerada no zip; rode de novo só se mudar as redes)
python3 bench_layers/gen_layers.py --netmendes vitis_component/netmendes \
    --out vitis_component/mxm-ursa/src/ursa_layers.h --csv bench_layers/layers.csv
```

## 1. 100 MHz, todos os tamanhos (BRAM)

```bash
./02_do_hls_all.sh && ./03_do_bitstreams.sh
for modo in free bench cnn layers; do
  FORCE=1 MODE=$modo ./04_do_vitis.sh
  python3 05_run_board.py --mode $modo --sizes 2 4 8 16
done
```

Redes do Mendes (satélite), já portadas para o v3 (`netmendes_v3/patch_runtime.py`
aplicado aos testes do v2; conferidas no host contra o modelo C do IP):

```bash
for n in $(ls vitis_component/netmendes/satellite/*_hwtest.cpp | xargs -n1 basename | sed 's/_hwtest.cpp//'); do
  FORCE=1 MODE=net NET=$n ./04_do_vitis.sh
  python3 05_run_board.py --mode net --net $n --sizes 2 4 8 16 --layouts bram
done
```

## 2. 123 MHz e 150 MHz (bitstreams próprios)

O mesmo fluxo com `PL_MHZ`. O HLS é escalonado para o novo período e o
Vivado pede o FCLK0 ao PS. 150 MHz não sai exato do PLL de 1600 MHz: o
Vivado escolhe o mais próximo (1600/11 = 145,45 MHz); o log do 03 imprime o
valor real ("FCLK0 requested ... actual ...").

```bash
PL_MHZ=123 ./02_do_hls_all.sh && PL_MHZ=123 ./03_do_bitstreams.sh
PL_MHZ=150 ./02_do_hls_all.sh && PL_MHZ=150 ./03_do_bitstreams.sh
grep -H "wns_ns" bitstreams/*f123*_summary.txt bitstreams/*f150*_summary.txt
```

As ELFs são as mesmas do passo 1 (o clock vem do ps7_init do XSA de cada
bitstream). Só muda o `--hw-variant`:

```bash
for f in 123 150; do
  for modo in free bench cnn layers; do
    python3 05_run_board.py --mode $modo --sizes 2 4 8 16 \
        --variant vanilla --hw-variant vanilla-f$f
    # -> results/times_<modo>_vanilla_hw-vanilla-f<f>.csv
  done
done
```

Rode só os tamanhos cujo WNS ficou >= 0.

## 3. Análise do bench de camadas

```bash
python3 bench_layers/analyze.py results/times_layers_vanilla.csv --mhz 100
python3 bench_layers/analyze.py results/times_layers_vanilla_hw-vanilla-f123.csv --mhz 123.08
python3 bench_layers/analyze.py results/times_layers_vanilla_hw-vanilla-f150.csv --mhz 145.45
```

`us_gemm` é só o tempo das chamadas ao URSA; `us_xfer` inclui o que o runtime
faz em volta (B e A para as janelas, C de volta e a soma dos pedaços de M).
