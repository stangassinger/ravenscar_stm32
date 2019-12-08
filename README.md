# ravenscar_stm32
ada ravenscar runtime for stm32 device
taken from https://github.com/AdaCore/bb-runtimes
cd  build_bsps/gen_bb_runtime
./build_rts.py --bsps-only --output=build --prefix=arm-eabi/lib/gnat --link stm32f303
cd  build_bsps/gen_bb_runtime/arm/stm32/stm32f303
rm -rf svd
~/svd2ada/svd2ada ~/ravenscar_stm32/build_bsps/svd/stm32f303.svd -o svd -p Interfaces.STM32
