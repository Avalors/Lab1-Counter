#!/bin/sh

#vbuddy connection established
~/Documents/iac/lab0-devtools/tools/attach_usb.sh

#cleanup
rm -rf obj_dir
rm -f counter.vcd

#verilator that generates mk file and Vcounter.cpp file 
verilator -Wall --cc --trace top.sv -exe top_tb.cpp

#compiles mk file and cpp file into executable model of digital design
make -j -C obj_dir/ -f Vtop.mk Vtop

#run executable file
obj_dir/Vtop