#! /bin/bash
#
# Script to build RISC-V ISA simulator, proxy kernel, and GNU toolchain.
# Tools will be installed to $RISCV.

if [ $# -lt 2]
then

if [ $1 == 1 ]
then
CC_FOR_TARGET=/home/deb/riscv/e/bin/riscv32-unknown-elf-gcc ./configure \
	--prefix=$(pwd)/bin \
	--target=riscv32-unknown-elf \
	--disable-werror \
	--with-arch=rv32e --with-abi=ilp32e \
	--disable-gdb \
	--disable-sim \
	--disable-libdecnumber \
	--disable-libreadline
make -j14
else
make -j14
fi

else

if [ $1 == 1 ]
then
CC_FOR_TARGET=/home/deb/riscv/e/bin/riscv32-unknown-elf-gcc ./configure \
	--prefix=$(pwd)/bin \
	--target=riscv32-unknown-elf \
	--disable-werror \
	--with-arch=rv32e --with-abi=ilp32e \
	--disable-gdb \
	--disable-sim \
	--disable-libdecnumber \
	--disable-libreadline
make -j14 $2
else
make -j14 $2
fi

fi
