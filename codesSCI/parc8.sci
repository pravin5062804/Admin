//q1
function [y]=linear(x, y)
    n=length(x)
    disp("n="+string(n))
    A=[n sum(x); sum(x) sum(x.^2)]
    B=[sum(y); sum(x.*y)]
    X=A\B
    a=X(1)
    b=X(2)   
    mprintf('Linear Regression:y=%g+%g*x',a,b)   
endfunction
x=[1,2,3,4,5]
y=[1,5,11,8,14]
linear(x,y)

//q2
/*
function [y]=polynomial(x, y)
    n=length(x)
    
    disp("n="+string(n))
    A=[n sum(x) sum(x.^2); sum(x) sum(x.^2) sum(x.^3); sum(x.^2) sum(x.^3) sum(x.^4)]
    B=[sum(y); sum(x.*y); sum(x.^2.*y)]
    X=A\B
    a=X(1)
    b=X(2)   
    c=X(3)
 
    mprintf('Linear Regression:y=%g+%g*x+%g*x^2',a,b,c)   
endfunction
x=[0,1,2,3,4]
y=[1,0,3,10,21]
polynomial(x,y)
*/
