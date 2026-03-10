//q1
function [yest]=Eulers(x0,y0,h,xest,f)
      n=(xest-x0)/h
    for i=1:n
        yest=y0+h*(f(x0,y0))
        x0=x0+h
        mprintf("y(%g) = %g\n",x0,yest)
        y0=yest
    end
endfunction
deff('[z]=f(x,y)','z=(x+3*y)')
Eulers(0,1,0.2,1,f)


//q2
function [yest]= RK1(x0, y0,h,xest,f)
    n = (xest-x0)/h
    for i=1:n
        disp("")
        k1 = h*(f(x0,y0))
        k2 = h*(f(x0+h,y0+k1))
        disp(k2)
        yest=y0+(0.5)*(k1+k2)
        disp(k1)
        disp(k2)
        disp(yest)
        mprintf("y(%g) = %g\n",x0,yest)
        x0 = x0+h
        
    end
endfunction
deff('[z]=f(x,y)','z=(y-x)')
RK1(0,2,0.1,0.2,f)
 
 
 
//q3
function [yest]=Rk4(x0, y0, h, xest, f) n=(xest-x0)/h

for i=1:n

disp("Iteration: "+string(i))

k1=h*(f(x0,y0))

k2=h*(f(x0+(h/2),y0+(k1/2)))

k3=h*(f(x0+(h/2),y0+(k2/2)))

k4=h*(f(x0+(h/2),y0+k3))

disp("k1="+string(k1))

disp("k2="+string(k2))

disp("k3="+string(k3))

disp("k4="+string(k4))

yest=y0+(1/6)*(k1+(2*k2)+(2*k3)+k4)

x0=x0+h

mprintf("y(%g)=%g\n",x0,yest)

y0=yest

end

endfunction

deff('[z]=f(x,y)''z=(3*x+y)')

Rk4(1,1.2,0.1,1.1,f)
