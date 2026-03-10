//q1
disp("10x+2y+z = 9");
disp("x+10y-z = -22");
disp("-2x+3y+10z = 22");
n=input("Enter the number of terms");
x(1)=0;
y(1)=0;
z(1)=0;

for i=2:n
    x(i)=1/10*(9-(2*y(i-1))-z(i-1))
    y(i)=1/10*(-22-x(i)+z(i-1))
    z(i)=1/10*(22+2*x(i)-3*y(i))
end

disp("x=",x(n));
disp("y=",y(n));
disp("z=",z(n));



