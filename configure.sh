#! /bin/bash
echo "Starting RISC-V BinUtils configuration process"

CC_FOR_TARGET=/home/deb/riscv/e/bin/riscv32-unknown-elf-gcc ./configure \
	--prefix=$(pwd)/bin \
	--target=riscv32-unknown-elf \
	--disable-werror \
	--with-arch=rv32e --with-abi=ilp32e \
	--disable-gdb \
	--disable-sim \
	--disable-libdecnumber \
	--disable-libreadline

echo "Done configuring RISC-V BinUtils"