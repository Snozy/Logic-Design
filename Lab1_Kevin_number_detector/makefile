
nc = ncverilog

#The file name of testbench.
tb = happy_verilog_tb.v

#The file name of our modules.
others = happy_verilog.v

#Combine them together.
srcs = $(tb) $(others)

#The log files.
log = ncverilog.log ncverilog.history novas_dump.log

#Defalut command is sim.
#If you type "make", makefile will execute "make sim" command.
make::sim

#Run the program.
sim:
	$(nc) $(srcs)

#Use vim to open the file happy_verilog.v.
oo:
	vim $(others)

#Use vim to open the testbench.
ot:
	vim $(tb)

#Clean the log file.
clean:
	rm -f $(log)
