# ravenscar_stm32
ada ravenscar runtime for stm32 device
taken from https://github.com/AdaCore/bb-runtimes
cd  build_bsps/gen_bb_runtime
./build_rts.py --bsps-only --output=build --prefix=arm-eabi/lib/gnat --link stm32f303
