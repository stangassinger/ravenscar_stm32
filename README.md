# ravenscar_stm32
# ada ravenscar runtime for stm32 device
# taken from https://github.com/AdaCore/bb-runtimes
echo "-------- Generating Runtime source files from svd -------------------"
rm -rf   ~/ravenscar_stm32/build_bsps/gen_bb_runtime/arm/stm32/stm32f303/svd
~/svd2ada/svd2ada ~/ravenscar_stm32/build_bsps/svd/STM32F3_svd_V1.2/STM32F3x8.svd -o ~/ravenscar_stm32/build_bsps/gen_bb_runtime/arm/stm32/stm32f303/svd -p Interfaces.STM32
echo "---------- Generating RTS ----------------"
cd  ~/ravenscar_stm32/build_bsps/gen_bb_runtime
./build_rts.py --bsps-only --output=build --prefix=. --link stm32f303
cd ~/ravenscar_stm32/build_bsps/gen_bb_runtime/build/BSPs
echo "------------- Compiling RTS -----------------------"
gprbuild   -P ravenscar_sfp_stm32f303.gpr   -j0 -f -g
gprinstall -P ravenscar_sfp_stm32f303.gpr --prefix=../../../../example/runtimes -f -p 
echo "------- Compiling example ----------"
cd ~/ravenscar_stm32/example
gprbuild   -P blinky_stm32f303.gpr
