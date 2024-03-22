module half_adder(Sum,carry,a,b);
input a,b;
output Sum,carry;
assign Sum = a ^ b;
assign carry = a & b;
endmodule
