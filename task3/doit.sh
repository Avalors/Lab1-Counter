#!/bin/sh

#vbuddy connection established
~/Documents/iac/lab0-devtools/tools/attach_usb.sh

#cleanup
rm -rf obj_dir
rm -f counter.vcd

#verilator that generates mk file and Vcounter.cpp file 
verilator -Wall --cc --trace counter.sv -exe counter_tb.cpp

#compiles mk file and cpp file into executable model of digital design
make -j -C obj_dir/ -f Vcounter.mk Vcounter

#run executable file
obj_dir/Vcounter