# SIMULATION AND IMPLEMENTATION OF LOGIC GATES,ADDERS AND SUBTRACTOR

# AIM: 
To simulate and synthesis Logic Gates,Adders and Subtractor using Xilinx ISE.

# APPARATUS REQUIRED: 
Xilinx 14.7 Spartan6 FPGA

# PROCEDURE: 
STEP:1 Start the Xilinx navigator, Select and Name the New project. 
STEP:2 Select the device family, device, package and speed.
STEP:3 Select new source in the New Project and select Verilog Module as the Source type.
STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it. 
STEP:5 Select the Behavioral Simulation in the Source Window and click the check syntax.
STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table. 
STEP:7 Select the Implementation in the Sources Window and select the required file in the Processes Window. 
STEP:8 Select Check Syntax from the Synthesize XST Process. Double Click in the Floorplan Area/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained. 
STEP:9 In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu. 
STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here. 
STEP:11 Load the Bit file into the SPARTAN 6 FPGA 
STEP:12 On the board, by giving required input, the LEDs starts to glow light, indicating the output.

# LOGIC GATES :

# LOGIC DIAGRAM :

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/ee17970c-3ac9-4603-881b-88e2825f41a4)

# VERILOG CODE :
```
module Logicgates(a,b,andgate,orgate,xorgate,nandgate,norgate,xnorgate,notgate);
input a,b;
output andgate,orgate,xorgate,nandgate,xnorgate,norgate,notgate;
and(andgate,a,b);
or(orgate,a,b);
xor(xorgate,a,b);
nand(nandgate,a,b);
nor(norgate,a,b);
xnor(xnorgate,a,b);
not(notgate,a);
endmodule
```

# OUTPUT :

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160829667/0257bffc-5282-42fa-8c9a-8cfd173e26c1)

# HALF ADDER :

# LOGIC DIAGRAM :

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/0e1ecb96-0c25-4556-832b-aeeedfdfe7b9)

# VERILOG CODE :
```
module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule
```
# OUTPUT :

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160829667/34e1dd55-9405-421a-b78a-be71e7fdead7)

# FULL ADDER :

# LOGIC DIAGRAM :

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/9bb3964c-438f-469d-a3de-c1cca6f323fb)

# VERILOG CODE :
```
module fa(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor g1(w1,a,b);
and g2(w2,a,b);
xor g3(sum,w1,c);
and g4(w3,w1,c);
or g5(carry,w3,w2);
endmodule
```
# OUTPUT :

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160829667/83b9c271-aadd-461a-a222-d8a70cecde39)

# HALF SUBTRACTOR :

# LOGIC DIAGRAM :

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/731470b7-eb4e-49f8-8bb7-2994052a7184)

# VERILOG CODE :
```
module hs(a,b,d,bo);
input a,b;
output d,bo;
xor g1(d,a,b);
and g2(bo,~a,b);
endmodule
```

# OUTPUT :

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160829667/b3c8ddae-5901-4f61-9c52-731e470c2623)

# FULL SUBTRACTOR :

# LOGIC DIAGRAM :

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/d66f874b-c1f2-44b3-a035-7149b56430c1)

# VERILOG CODE :
```
module fs(a,b,bi,d,bo);
input a,b,bi;
output d,bo;
wire w1,w2,w3,w4,w5;
not g1(w1,a);
xor g2(w2,a,b);
and g3(w3,w1,b);
not g4(w4,w2);
xor g5(d,w2,bi);
and g6(w5,w4,bi);
or g7(bo,w5,w3);
endmodule
```

# OUTPUT :

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160829667/750f2495-783e-42eb-834c-dbd50026a239)

# 8-bit RIPPLE CARRY ADDER :

# LOGIC DIAGRAM :

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/7385a408-40a5-4203-8050-b72818622d79)

# VERILOG CODE :
```
module rc(a,b,c,sum,cout) ;
 input a,b,c;
 output sum,cout;
 wire w1,w2,w3;
 xor g1(w1,a,b);
 xor g2(sum,w1,c);
 and g3(w2,a,b);
 and g4(w3,w1,c);
 or g5(cout,w3,w2);
 endmodule
 module rca8(a,b,cin,sum,cout);
 input [7:0]a,b;
 input cin;
 output [7:0]sum;
 output cout;
 wire w1,w2,w3,w4,w5,w6,w7;
 rc rc1(a[0],b[0],cin,sum[0],w1);
 rc rc2(a[1],b[1],w1,sum[1],w2);
 rc rc3(a[2],b[2],w2,sum[2],w3);
 rc rc4(a[3],b[3],w3,sum[3],w4);
 rc rc5(a[4],b[4],w4,sum[4],w5);
 rc rc6(a[5],b[5],w5,sum[5],w6);
 rc rc7(a[6],b[6],w6,sum[6],w7);
 rc rc8(a[7],b[7],w7,sum[7],cout);
 endmodule
```
# OUTPUT :

![image](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/160829667/75939a37-d794-429e-b644-fe7652f85b0a)

# RESULT :
Hence Logic Gates,Adders and Subtractor are simulated and synthesised using Xilinx ISE.

