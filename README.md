# VLSI-LAB-EXPERIMENTS
AIM: To simulate and synthesis Logic Gates,Adders and Subtractor using Xilinx ISE.

APPARATUS REQUIRED: Xilinx 14.7 Spartan6 FPGA

PROCEDURE: STEP:1 Start the Xilinx navigator, Select and Name the New project. STEP:2 Select the device family, device, package and speed. STEP:3 Select new source in the New Project and select Verilog Module as the Source type. STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it. STEP:5 Select the Behavioral Simulation in the Source Window and click the check syntax. STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table. STEP:7 Select the Implementation in the Sources Window and select the required file in the Processes Window. STEP:8 Select Check Syntax from the Synthesize XST Process. Double Click in the Floorplan Area/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained. STEP:9 In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu. STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here. STEP:12 Load the Bit file into the SPARTAN 6 FPGA STEP:11 On the board, by giving required input, the LEDs starts to glow light, indicating the output.

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



## VERILOG CODE:

1)LOGIC GATE:-
module logicgates(a,b,c1,c2,c3,c4,c5,c6,c7);
input a,b;
output c1,c2,c3,c4,c5,c6,c7;
and g1(c1,a,b);
or g2(c2,a,b);
nand g3(c3,a,b);
nor g4(c4,a,b);
xor g5(c5,a,b);
xnor g6(c6,a,b);
not g7(c7,a);
endmodule

## OUTPUT:
"C:\Users\91807\OneDrive\Pictures\Screenshots\Screenshot 2024-03-16 130617.png"

2)HALF ADDER:-
module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;
xor g1(sum,a,b);
and g2(carry,a,b);
endmodule

## OUTPUT:-
"C:\Users\91807\OneDrive\Pictures\Screenshots\Screenshot 2024-03-16 130656.png"

3)FULL ADDER:-
module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor g1(w1,a,b);
and g2(w2,a,b);
xor g3(sum,w1,c);
and g4(w3,w1,c);
or g5(carry,w2,w3);
endmodule

## OUTPUT:-
"C:\Users\91807\OneDrive\Pictures\WhatsApp Image 2024-05-13 at 20.05.52_8c0ea3e3.jpg"

4)HALF SUBRACTOR:-
module halfsub(diff,borrow,a,b);
input a,b;
output diff,borrow;
wire w1;
xor g1(diff,a,b);
not g2(w1,a);
and g3(borrow,w1,b);
endmodule

## OUTPUT:-
"C:\Users\91807\OneDrive\Pictures\WhatsApp Image 2024-05-13 at 20.17.54_33cde51f.jpg"

5)FULL SUBRACTOR:-
module fullsub(a,b,c,sum,carry);
 input a,b,c;
 output sum,carry;
 wire w1,w2,w3;
 xor g1(w1,a,b);
 xor g2(sum,w1,c);
 and g3(w2,a,b);
 and g4(w3,a,b);
 or g5(carry,w3,w2);
 endmodule

 ## OUTPUT:-
 "C:\Users\91807\OneDrive\Pictures\Screenshots\Screenshot 2024-05-13 203414.png"

 6)8-BIT RIPPLE CARRY ADDER:-
 module RC(a,b,c,sum,cout) ;
 input a,b,c;
 output sum,cout;
 wire w1,w2,w3;
 xor g1(w1,c,b);
 and g2(sum,w1,b);
 xor g3(w2,a,b);
 and g4(w3,c,w1);
 or g5(carry,w2,w3);
 endmodule
 module RCA(a,b,cin,sum,cout);
 input [3:0]a,b;
 input cin;
 output [3:0]sum;
 output cout;
 wire w1,w2,w3;
 RC RC1(a[0],b[0],cin,sum[0],w1);
 RC RC2(a[1],b[1],w1,sum[1],w2);
 RC RC3(a[2],b[2],w2,sum[2],w3);
 RC RC4(a[3],b[3],w3,sum[3],w4);
 endmodule

 ## OUTPUT:-
 "C:\Users\91807\OneDrive\Pictures\Screenshots\Screenshot 2024-05-13 203746.png"

RESULT:
Thus the simulation and synthesis of logic gate,adder and subractor using vivado 2023.1 is verified successfully.
