#!/bin/sh
#
# Compile and run the test bench

NCYCLES=10000
OUTFILE=output.txt 

[ -x "$(command -v iverilog)" ] || { echo "Install iverilog"; exit 1; }

# Clear out existing log file
rm -f cpu_tb.log 

# Go into the `compile` folder and compile the code
cd compile  && echo "Compiling in $PWD"
./compile.sh test.c > ../test/idata.mem

# Go back to parent directory with verilog code
cd ../
# You may need to change NCYCLES below
iverilog -DNCYCLES=$NCYCLES -DOUTFILE=$OUTFILE -DTESTDIR=\"./test\" -o cpu_tb -c program_file.txt
#./cpu_tb 

# Check the output in OUTFILE
# retval=$(grep -c "HelloWorld" $OUTFILE)
# if [ ! $retval -eq 0 ];
# then
#     echo "Passed"
# else
#     echo "Failed"
# fi
cat<<EOF
Output is as follows:

EOF
cat output.txt 
cat<<EOF
You can view the results in the file output.txt
EOF
exit 0
