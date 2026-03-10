//Bisection method 
//f(x)=x^3-x-1

function [x]=bijection(a,b,f)

    n=input("Enter the no of iterations:");

    for i=1:n
        disp("Iteration:"+string(i));

        disp("f(a):"+string(f(a)));
        disp("f(b):"+string(f(b)));

        xi=(a+b)/2;
        disp("xi:"+string(xi));
        disp("f(xi):"+string(f(xi)));

        if f(a)*f(xi)<0 then
            b=xi;
            disp("root lies in:"+string(a)+" and "+string(b));
        else
            a=xi;
            disp("root lies in:"+string(a)+" and "+string(b));
        end
    end

endfunction

deff("[y]=f(x)","y=x^3-x-1");

a=0;
b=5;

bijection(a,b,f);
























//prac 8
//Liear regression
/*
function [y]=Linear(x,y)
    n=length(x);
    disp("Length:"+string(n));
    A=[n sum(x);sum(x) sum(x.^2)];
    B=[sum(y);sum(x.*y)]
    X=A\B;
    a=X(1);
    b=X(2);
    mprintf("Linear regression y=%g+%g*x",a,b);
endfunction
x=[1,2,3,4,5];
y=[1,5,11,8,14];
Linear(x,y);
*/










//prac 7
//Q3 -RK4
/*
function [yest]=RK4(x0,y0,h,xest,f)
    n=(xest-x0)/h
    for i=1:n
        k1=h*f(x0,y0);
        k2=h*f(x0+(h/2),y0+(k1/2));
        k3=h*f(x0+(h/2),y0+(k2/2));
        k4=h*f(x0+h,y0+k3);
        
        disp("k1"+string(k1)); 
         disp("k2"+string(k2)); 
          disp("k3"+string(k3)); 
           disp("k4"+string(k4)); 
       
        
        yest=y0+1/6*(k1+2*k2+2*k3+k4);
        y0=yest
        disp(yest);
        x0=x0+h;
    end
endfunction
deff("[z]=f(x,y)","z=3*x+y");
x0=1;
y0=1.2;
h=0.1;
xest=1.1;
RK4(x0,y0,h,xest,f);
*/

//Q2-RK2
/*
function [yest]=RK2(x0,y0,h,xest,f)
    n=(xest-x0)/h;
    for i=1:n
        K1=h*(f(x0,y0));
        K2=h*(f(x0+h,y0+K1));
        yest=y0+0.5*(K1+K2);
        y0=yest;
        x0=x0+h;
        disp("K1 is:"+string(K1));
        disp("K2 is:"+string(K2));
        disp(yest);
    end
endfunction
deff("[z]=f(x,y)","z=y-x");
x0=0;
y0=2;
h=0.1;
xest=0.2;
RK2(x0,y0,h,xest,f);

*/
//Q1-Eulers rule
/*
function [yest]=Eulers(x0,y0,h,xest,f)
    n=(xest-x0)/h;
    for i=1:n
        yest=y0+h*f(x0,y0);
        x0=x0+h;
        disp("iteration:"+string(i));
        disp("y at x:"+string(x0'));
        disp(yest);
        y0=yest;
    end
endfunction
deff("[z]=f(x,y)","z=x+3*y");
x0=0;
y0=1;
h=0.2;
xest=1;
Eulers(x0,y0,h,xest,f)
*/
















//prac 3
//Q2
//Newton raphson
/*
function []=newton_raphson(x0,f,df)
    n=int(input("Enter the no of iteration:"));
    for i=1:n
        xi=x0-(f(x0)/df(x0));
        disp("Iteration:"+string(i));
        disp("x of :"+string(xi));
        x0=xi;
    end
endfunction
deff("[y]=f(x)","y=x^4-20");
deff("[y]=df(x)","y=4*x^3");
x0=2;
newton_raphson(x0,f,df)
*/
//Q1
//Bijection method
/*
function [x]=bijection(a,b,f)
    n=int(input("Enter no of Iteration:"));
    for i=1:n
        disp("Iteration :"+string(i));
        disp("f(a):"+string(f(a)));
        disp("f(b):"+string(f(b)));
        xi=(a+b)/2
        disp("xi:"+string(xi));
        disp("f(xi):"+string(f(xi)));
        if(f(xi)*f(a)>0)then
            b=xi;
        else
            a=xi;
        end
            
    end
    
    
endfunction
deff("[y]=f(x)",'y=3*x^3+5*x-40');
a=2;
b=3;
bijection(a,b,f)

*/


//Prac 2
//Q1
/*
x(1)=0;
y(1)=0;
z(1)=0;

n=input("Enter the interation:")

for i=2:n+1
    x(i)=(1/10)*(9-(2*y(i-1))-z(i-1));
    y(i)=(1/10)*(-22-x(i-1)-z(i-1));
    z(i)=(1/10)*(22-(-2*x(i-1))-3*y(i-1));
    disp("Iteration :"+string(i-1))
    disp("x="+string(x(i)));
    disp("y="+string(y(i)));
    disp("z="+string(z(i)));
end


*/

//Prac 1
//Q1
/*
x = poly(0,'x');

f = input("Enter the Equation:");
disp("Polynomial:");
disp(f)

a = input("Enter a:");
b = input("Enter b:");
c = input("Enter c:");

s = sqrt(b^2 - 4*a*c);

root1 = (-b - s)/(2*a);
root2 = (-b + s)/(2*a);

disp("root1: "+string(root1));
disp("root2: "+string(root2));

*/
//Q2
//true error and reltaive error
/*
x=poly(0,'x');
f=input("Enter the polynomial:");
approx_val=input("Enter the approx value:");

true_val=input("Enter the true value:");
disp("Polinomial:"+string(f));

ans_true=horner(f,true_val);
ans_approx=horner(f,approx_val);

TE=abs(ans_true-ans_approx);
PTE=TE*100;
disp("ture error:"+string(TE));
disp(" % ture error:"+string(PTE));
RE=abs(TE/ans_true);
PRE=RE*100;
disp("ture error:"+string(RE));
disp(" % ture error:"+string(PRE));
*/

//Q3
//code for  exponential series of TE & RE 
/*
x=input("Enter the value of x:");
n=input("Enter the no of terms:");

fact=1;
sum1=1;

for i=1:n
    fact=fact*i;
    term=(x^i)/fact;
    sum1=sum1+term;
end

AV=sum1;
TV=exp(x);

TE=abs(TV-AV);
RE=TE/TV;

PTE=RE*100;
PRE=RE*100;

disp("True error:"+string(TE));
disp("Relative error:"+string(RE));
disp("%True error:"+string(PTE));
disp("%Relative error:"+string(PRE));

*/

//prac 6
//newton forword 
/*
function[yest]=Newtonforword(x,y,xest)
    n=length(y);
    disp("length (n):"+string(n));
    
    d(:,1)=y'
    for j=2:n+1
        for i=1:n+1-j
            d(i,j)=d(i+1,j-1)-d(i,j-1);
        end
    end
    
    d(:,1)=[]
    
    mprintf("%5s %5s %5s %5s %5s",'x','y','dy','d2y','d3y');
    disp("")
    disp([x',y',d]);
    
    h=x(2)- x(1)
    disp("stepsize is:"+string(h));
    
    p=(xest-x(1)/h)
    disp("p="+string(p))

endfunction
x=[0,2,4,6];
y=[2,10,66,218];
xest=1.5;
Newtonforword(x,y,xest);



*/

/*function [yest]=Newtonforword(x,y,xest)
    n=length(y);
    disp("length(n) is:"+string(n));
    
    d(:,1)=y' //create 1st column diff 
    for j=2:n+1
        for i=1:n+1-j
            d(i,j)=d(i+1,j-1)-d(i,j-1);
            end
    end
    d(:,1)=[];
    
    mprintf("%4s %4s %7s %7s %6s",'x','y','dy','d2y','d3y');
    disp("")
    disp([x',y',d]);
    
    //calculate stepsize
    h=x(2)-x(1);
    disp("step size is:"+string(h));
    
endfunction
x=[0,2,4,6];
y=[2,10,66,218];
xest=1.5;
Newtonforword(x,y,xest);
*/
