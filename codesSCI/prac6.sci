//q1
/*
function[I]=trapezoidal(a,b,n,f)
    h=(b-a)/n;
    disp("step size:"+string(h));
    
    //for x0
    mprintf("%5s %5s",'x','y');
    disp("")
    y0=f(a);
    disp([a y0]);
    
    //for R
    R=0;
    for i=1:n-1
        a=a+h;
        fi=f(a);
        disp([a fi]);
        R=R+2*fi;
    end
    
    //for xn
    yn=f(b);
    disp([b yn]);
    
    I=(h/2)*((y0+yn)+R);
    disp("Integral value:"+string(I));
    
endfunction
deff("[y]=f(x)","y=4+2*sin(x)");
a=0;
b=%pi;
n=6;
trapezoidal(a,b,n,f);
*/



//q2
//simson's 1/3 rule
/*
function[I]=simsonone_third(a,b,n,f)
    h=(b-a)/n;
    disp("step size:"+string(h));
    // for y0
    mprintf("%5s %5s","x","y");
    disp("");
    y0=f(a);
    disp([a y0]);
    
    //for E or O
    E=0;
    O=0;
    for i=1:n-1
        a=a+h;
        if modulo(i,2)==0 then
        fi=f(a);
        disp([a fi]);
        E=E+2*fi;
        else 
        fi=f(a);
        disp([a fi]);
        O=O+4*fi;
        end
    end
    
    //for yn
    yn=f(b);
    disp([b yn]);
    
    I=(h/3)*(y0+yn+E+O);
    disp("Integral is:"+string(I));
    
endfunction
deff("[y]=f(x)","y=4+2*sin(x)");
a=0;
b=%pi;
n=6;
simsonone_third(a,b,n,f);
*/


//q3
/*
function[I]=simsonthree_eigth(a,b,n,f)
    h=(b-a)/n;
    disp("stepsize is:"+string(h));
    mprintf("%5s %5s","x","y");

    //for y0
    y0=f(a);
    disp([a y0]);
    
    //for R and multiple of 3
    R=0;
    MT=0;
    for i=1:n-1
        a=a+h;
        if modulo(i,3)==0 then
            fi=f(a);
            disp([a fi]);
            MT=MT+2*fi;
        else
            fi=f(a);
            disp([a fi]);
            R=R+3*fi;
            end
    end
    
    //for yn
    yn=f(b);
    disp([b yn]);
    
    I=((3*h)/8)*(y0+yn+MT+R);
    disp("Integral is:"+string(I));
    
endfunction
deff("[y]=f(x)","y=4+2*sin(x)");
a=0;
b=%pi;
n=6;
simsonthree_eigth(a,b,n,f);

*/
