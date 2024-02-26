module test();
int d,result;
int a=2,b=3;

function automatic mult(input int a,input int b,output int c);
c=(a*b)+2;
$display("@time=%d,a=%d,b=%d,c=%d",$time,a,b,c);
endfunction

initial
fork
begin
#1;
mult(2,3,d);
$display("@time=%d,a=%d,b=%d,d=%d",$time,a,b,d);
end
begin
#2
mult(2,4,d);
$display("@time=%d,a=%d,b=%d,d=%d",$time,a,b,d);
end
join
endmodule