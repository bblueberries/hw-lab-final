
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:082

00:00:082	
523.2302	
236.773Z17-268h px� 
�
Command: %s
1870*	planAhead2u
sread_checkpoint -auto_incremental -incremental C:/finalproject/finalproject.srcs/utils_1/imports/synth_1/system.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2F
DC:/finalproject/finalproject.srcs/utils_1/imports/synth_1/system.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
a
Command: %s
53*	vivadotcl20
.synth_design -top system -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
7400Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1375.594 ; gain = 448.949
h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2

segments2C
?C:/finalproject/finalproject.srcs/sources_1/new/hexTo7Segment.v2
288@Z8-11121h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
baud2
wire2<
8C:/finalproject/finalproject.srcs/sources_1/new/system.v2
258@Z8-11241h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
baud2
252<
8C:/finalproject/finalproject.srcs/sources_1/new/system.v2
308@Z8-8895h px� 
�
synthesizing module '%s'%s4497*oasys2
system2
 2<
8C:/finalproject/finalproject.srcs/sources_1/new/system.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
singlePulser2
 2B
>C:/finalproject/finalproject.srcs/sources_1/new/singlePulser.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
singlePulser2
 2
02
12B
>C:/finalproject/finalproject.srcs/sources_1/new/singlePulser.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
baudrate_gen2
 2B
>C:/finalproject/finalproject.srcs/sources_1/new/baudrate_gen.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
baudrate_gen2
 2
02
12B
>C:/finalproject/finalproject.srcs/sources_1/new/baudrate_gen.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
uart_rx2
 2=
9C:/finalproject/finalproject.srcs/sources_1/new/uart_rx.v2
228@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2=
9C:/finalproject/finalproject.srcs/sources_1/new/uart_rx.v2
448@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
uart_rx2
 2
02
12=
9C:/finalproject/finalproject.srcs/sources_1/new/uart_rx.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
uart_tx2
 2=
9C:/finalproject/finalproject.srcs/sources_1/new/uart_tx.v2
228@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2=
9C:/finalproject/finalproject.srcs/sources_1/new/uart_tx.v2
498@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
uart_tx2
 2
02
12=
9C:/finalproject/finalproject.srcs/sources_1/new/uart_tx.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
quadSevenSeg2
 2B
>C:/finalproject/finalproject.srcs/sources_1/new/quadSevenSeg.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
hexTo7Segment2
 2C
?C:/finalproject/finalproject.srcs/sources_1/new/hexTo7Segment.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hexTo7Segment2
 2
02
12C
?C:/finalproject/finalproject.srcs/sources_1/new/hexTo7Segment.v2
238@Z8-6155h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num02B
>C:/finalproject/finalproject.srcs/sources_1/new/quadSevenSeg.v2
658@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num12B
>C:/finalproject/finalproject.srcs/sources_1/new/quadSevenSeg.v2
658@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num22B
>C:/finalproject/finalproject.srcs/sources_1/new/quadSevenSeg.v2
658@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num32B
>C:/finalproject/finalproject.srcs/sources_1/new/quadSevenSeg.v2
658@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
quadSevenSeg2
 2
02
12B
>C:/finalproject/finalproject.srcs/sources_1/new/quadSevenSeg.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

vga_test2
 2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

vga_sync2
 2D
@C:/finalproject/finalproject.srcs/sources_1/new/vga_controller.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

vga_sync2
 2
02
12D
@C:/finalproject/finalproject.srcs/sources_1/new/vga_controller.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
counter2
 2=
9C:/finalproject/finalproject.srcs/sources_1/new/counter.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
counter2
 2
02
12=
9C:/finalproject/finalproject.srcs/sources_1/new/counter.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
textGeneration2
 2D
@C:/finalproject/finalproject.srcs/sources_1/new/textGeneration.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
textGeneration2
 2
02
12D
@C:/finalproject/finalproject.srcs/sources_1/new/textGeneration.v2
18@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
518@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
548@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
578@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
608@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
638@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
668@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
698@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	y_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
728@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
758@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	y_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
758@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
788@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	y_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
788@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
818@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	y_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
818@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
848@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	y_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
848@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
878@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	y_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
878@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
908@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	y_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
908@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	x_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
938@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
	y_desired2
102
textGeneration2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
938@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
	ascii_rom2
 2?
;C:/finalproject/finalproject.srcs/sources_1/new/ascii_rom.v2
18@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2?
;C:/finalproject/finalproject.srcs/sources_1/new/ascii_rom.v2
168@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	ascii_rom2
 2
02
12?
;C:/finalproject/finalproject.srcs/sources_1/new/ascii_rom.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
baud_rate_sync_with_en22
 2D
@C:/finalproject/finalproject.srcs/sources_1/new/baud_rate_sync.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
baud_rate_sync_with_en22
 2
02
12D
@C:/finalproject/finalproject.srcs/sources_1/new/baud_rate_sync.v2
18@Z8-6155h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1898@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
index2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1908@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
index_offset2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1948@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

line_num2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1958@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
index2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1968@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
1998@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
index2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2008@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
index_offset2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2068@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

line_num2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2078@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
index2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2088@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	readAscii2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2118@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
index2A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
2128@Z8-6090h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

vga_test2
 2
02
12A
=C:/finalproject/finalproject.srcs/sources_1/new/vga_display.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system2
 2
02
12<
8C:/finalproject/finalproject.srcs/sources_1/new/system.v2
18@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
RsTx2
system2<
8C:/finalproject/finalproject.srcs/sources_1/new/system.v2
28@Z8-3848h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2
textGenerationZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
textGenerationZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2

data_in[7]2

vga_testZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
RsTx2
systemZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
RsRx2
systemZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1501.828 ; gain = 575.184
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1501.828 ; gain = 575.184
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1501.828 ; gain = 575.184
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0172

1501.8282
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
sw[8]2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
288@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
288@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[8]2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
298@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
298@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[9]2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
308@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
308@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[9]2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
318@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
318@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[10]2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
328@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
328@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[10]2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
338@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
338@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[11]2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
348@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
348@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[11]2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
358@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
358@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnC2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1118@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1118@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnC2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1128@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1128@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnL2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1158@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1158@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnL2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1168@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1168@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnR2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1178@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1178@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnR2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1188@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
1188@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2A
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
=C:/finalproject/finalproject.srcs/constrs_1/new/consraint.xdc2
.Xil/system_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1566.3592
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0052

1566.3592
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
!inferring latch for variable '%s'327*oasys2

data_reg2?
;C:/finalproject/finalproject.srcs/sources_1/new/ascii_rom.v2
188@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 12    
h p
x
� 
F
%s
*synth2.
,	   3 Input   11 Bit       Adders := 32    
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 34    
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 17    
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 18    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   5 Input   12 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 17    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
b
+design %s has port %s driven by constant %s3447*oasys2
system2
dp2
0Z8-3917h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2
textGenerationZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
textGenerationZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2

data_in[7]2

vga_testZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
RsTx2
systemZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
RsRx2
systemZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     2|
h px� 
2
%s*synth2
|2     |CARRY4 |   216|
h px� 
2
%s*synth2
|3     |LUT1   |   281|
h px� 
2
%s*synth2
|4     |LUT2   |   303|
h px� 
2
%s*synth2
|5     |LUT3   |    30|
h px� 
2
%s*synth2
|6     |LUT4   |   118|
h px� 
2
%s*synth2
|7     |LUT5   |    63|
h px� 
2
%s*synth2
|8     |LUT6   |   256|
h px� 
2
%s*synth2
|9     |MUXF7  |    42|
h px� 
2
%s*synth2
|10    |MUXF8  |    10|
h px� 
2
%s*synth2
|11    |FDCE   |    27|
h px� 
2
%s*synth2
|12    |FDRE   |   215|
h px� 
2
%s*synth2
|13    |FDSE   |    28|
h px� 
2
%s*synth2
|14    |LD     |     8|
h px� 
2
%s*synth2
|15    |IBUF   |    12|
h px� 
2
%s*synth2
|16    |OBUF   |    27|
h px� 
2
%s*synth2
|17    |OBUFT  |     1|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1566.359 ; gain = 639.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 8 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:30 ; elapsed = 00:00:37 . Memory (MB): peak = 1566.359 ; gain = 575.184
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1566.359 ; gain = 639.715
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0232

1566.3592
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
276Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1566.3592
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2G
E  A total of 8 instances were transformed.
  LD => LDCE: 8 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

ea3b1686Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522
1132
142
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:422

00:00:452

1566.3592

1037.094Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0052

1566.3592
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint26
4C:/finalproject/finalproject.runs/synth_1/system.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2W
Ureport_utilization -file system_utilization_synth.rpt -pb system_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat Dec  7 01:59:06 2024Z17-206h px� 


End Record