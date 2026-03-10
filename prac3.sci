//q1
/*
function bijection(a,b,f)

    n = input("Enter the no of Iterations:");

    for i = 1:n
        disp("Iteration "+string(i));
        disp("f(a): "+string(f(a)));
        disp("f(b): "+string(f(b)));

        xi = (a + b)/2;
        disp("xi = "+string(xi));

        if f(a)*f(xi) < 0 then
            b = xi;
            disp("The root lies in: "+string(a)+" and "+string(b));
        else
            a = xi;
            disp("The root lies in: "+string(a)+" and "+string(b));
        end
    end
endfunction


deff('y=f(x)', 'y = 3*x^3 + 5*x - 40');

a = input("Enter a: ");
b = input("Enter b: ");

bijection(a,b,f);

*/
//q2

x = poly(0,'x');        
f = input("Enter function: ");  
df = derivat(f);         
x0 = input("Enter initial guess: ");
n = input("Enter number of iterations: ");
for i = 1:n
    x1 = x0 - (horner(f,x0) / horner(df,x0));
    disp("Iteration " + string(i) + " Root = " + string(x1));
    x0 = x1;  
end

disp("Approximate Root = " + string(x1));
*/




//q3
/*
function[x]=Rasgula(a,b,f);
n=int(input("Enter the number of iteration : "))
    xr=0;
    for i = 1 : n
        disp("Iteration "+string(i)+" : ")
        disp("Root lies in ["+string(a)+","+string(b)+"]")       
        xrp=xr;
        xr = (a*f(b) - b*f(a))/(f(b)-f(a));

        disp("x base "+string(i)+" = "+string(xr))
        con=f(a)*f(xr);
        if(con<0)
            b=xr;
            disp("Root lies in (a,xr) = ["+string(a)+","+string(b)+"]")
        end
        if(con>0)
            a=xr;
            disp("Root lies in (xr,b) = ["+string(a)+","+string(b)+"]")
        end
        xrp = int(xrp.*10^0);
        xr = int(xr.*10^3);
        if(xrp==xr)
            disp("Equation matched at Iteration "+string(i))
            break;
        end
    end
endfunction
deff('[y]=f(x)','y=x^3-2*x-5');
a=int(input("Enter the value of a : "));
b=int(input("Enter the value of b : "));
Rasgula(a,b,f);

*/
