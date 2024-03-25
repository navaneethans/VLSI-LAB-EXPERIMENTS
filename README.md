# VLSI-LAB-EXPERIMENTS
AIM: To simulate and synthesis Logic Gates,Adders and Subtractor using vivado.

APPARATUS REQUIRED: vivado 2023 

PROCEDURE:
STEP:1 Start the vivado software, Select and Name the New project.

STEP:2 Select the device family, device, package and speed.

STEP:3 Select new source in the New Project and select Verilog Module as the Source type.

STEP:4 Type the File Name and module name and Click Next and then finish button. Type the code and save it.

STEP:5 Select the run simulation adn then run Behavioral Simulation in the Source Window and click the check syntax.

STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table.

STEP:7 Select the Implementation in the Sources Window and select the required file in the Processes Window.

STEP:8 Select Check Syntax from the Synthesize XST Process. Double Click in the Floorplan Area/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained.

STEP:9 In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu.

STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here.

STEP:11 Load the Bit file into the SPARTAN 7 FPGA

STEP:12 On the board, by giving required input, the LEDs starts to glow light, indicating the output.

Logic Diagram :

Logic Gates:
![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/ee17970c-3ac9-4603-881b-88e2825f41a4)


Half Adder:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/0e1ecb96-0c25-4556-832b-aeeedfdfe7b9)


Full adder:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/9bb3964c-438f-469d-a3de-c1cca6f323fb)


Half Subtractor:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/731470b7-eb4e-49f8-8bb7-2994052a7184)



Full Subtractor:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/d66f874b-c1f2-44b3-a035-7149b56430c1)



8 Bit Ripple Carry Adder

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/7385a408-40a5-4203-8050-b72818622d79)



VERILOG CODE:

LOGIC GATES:

module logic(a,b,andgate,orgate,xorgate,nandgate,norgate,xnorgate,notgate );
input a,b;
output andgate,orgate,xorgate,nandgate,norgate,xnorgate,notgate;
and(andgate,a,b);
or(orgate,a,b);
xor(xorgate,a,b);
nand(nandgate,a,b);
nor(norgate,a,b);
xnor(xnorgate,a,b);
not(notgate,a);
endmodule

HALF ADDER:

module HalfAdder(a,b,sum,carry);
input a,b;
output sum,carry;
xor (sum,a,b);
and (carry,a,b);
endmodule

FULL ADDER:

module FA(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
xor g1(w1,a,b);
and g2(w2,w1,cin);
and g3(w3,a,b);
xor g4(sum,w1,cin);
or g5(cout,w2,w3);
endmodule

HALF SUBTRACTOR:

module halfsubtractor(a,b,diff,borrow);
input a,b;
output diff,borrow;
xor g1(diff,a,b);
and g2(borrow,~a,b);
endmodule

FULL SUBTRACTOR:

module full_sub(a,b,bin,diff,borrow);
input a,b,bin;
output diff,borrow;
wire w1,w2,w3;
xor g1(w1,a,bin);
and g2(w2,~a,b);
xor g3(diff,w1,bin);
or g4(borrow,w2,w3);
and g5(w3,~w1,bin);
endmodule

8 BIT RIPPLE CARRY ADDER:

module fa(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum = a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule

module RCA_8(a,b,cin,sum,cout);
input [7:0]a,b;
input cin;
output [7:0]sum;
output cout;
wire c1,c2,c3,c4,c5,c6,c7;
fa fa1(a[0],b[0],cin,sum[0],c1);
fa fa2(a[1],b[1],c1,sum[1],c2);
fa fa3(a[2],b[2],c2,sum[2],c3);
fa fa4(a[3],b[3],c3,sum[3],c4);
fa fa5(a[4],b[4],c4,sum[4],c5);
fa fa6(a[5],b[5],c5,sum[5],c6);
fa fa7(a[6],b[6],c6,sum[6],c7);
fa fa8(a[7],b[7],c7,sum[7],cout);
endmodule


OUTPUT:

<img width="855" alt="LOGIC" src="https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/161149578/c055ea16-8839-4df3-b5c3-ccb29e19bf12">

<img width="809" alt="ha" src="https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/161149578/0b01c44f-7a82-444e-91cf-473c51a47a79">

![FA](https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/161149578/32ca3242-1503-44bb-a1d5-4231f0e324b5)

<img width="785" alt="halfsub" src="https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/161149578/725e8177-1b17-401c-ab47-5d67551f6ebf">

<img width="1280" alt="fs" src="https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/161149578/596a8b83-1442-4f95-a289-e2a380f5ca14">

<img width="752" alt="RCA_8" src="https://github.com/navaneethans/VLSI-LAB-EXP-1/assets/161149578/2c2c9b3c-2a3c-4ca4-a5c1-0a9dd58b1417">


RESULT:

  Thus the simulation and synthesis of Logic Gates,Adders and Subtractors using vivado was successfully excecuted and verified.


