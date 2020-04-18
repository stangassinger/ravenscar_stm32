# ravenscar_stm32
# ada ravenscar runtime for stm32 device
# taken from https://github.com/AdaCore/bb-runtimes
echo "-------- Generating Runtime source files from svd -------------------"
rm -rf   ~/ravenscar_stm32/build_bsps/gen_bb_runtime/arm/stm32/stm32f303/svd
##  git clone https://github.com/AdaCore/svd2ada.git
~/svd2ada/svd2ada ~/ravenscar_stm32/build_bsps/svd/STM32F3_svd_V1.2/STM32F3x8.svd -o ~/ravenscar_stm32/build_bsps/gen_bb_runtime/arm/stm32/stm32f303/svd -p Interfaces.STM32
echo "---------- Generating RTS ----------------"
cd  ~/ravenscar_stm32/build_bsps/gen_bb_runtime
./build_rts.py --bsps-only --output=build --prefix=. --link stm32f303
cd ~/ravenscar_stm32/build_bsps/gen_bb_runtime/build/BSPs
echo "------------- Compiling RTS -----------------------"
gprbuild   -P zfp_stm32f303.gpr   -j0 -f -g
gprinstall -P zfp_stm32f303.gpr --prefix=../../../../example/runtimes -f -p 

#gprbuild   -P ravenscar_sfp_stm32f303.gpr   -j0 -f -g
#gprinstall -P ravenscar_sfp_stm32f303.gpr --prefix=../../../../example/runtimes -f -p

#gprbuild   -P ravenscar_full_stm32f303.gpr   -j0 -f -g
#gprinstall -P ravenscar_full_stm32f303.gpr --prefix=../../../../example/runtimes -f -p

echo "------- Compiling example ----------"
cd ~/ravenscar_stm32/example
gprbuild   -P blinky_stm32f303_zfp.gpr
#gprbuild   -P blinky_stm32f303_sfp.gpr
#gprbuild   -P blinky_stm32f303_full.gpr


# Known Problems:
# when debugging you may get this error:
# ERROR flash_loader.c: write error, count == 1023
# ERROR common.c: stlink_flash_loader_run(0x8000800) failed! == -1
# it can be solved with:
# st-flash erase
