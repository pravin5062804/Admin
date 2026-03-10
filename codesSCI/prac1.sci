//Q1
/*
    x=poly(0,'x');
    f=input("Enter the polynomial:");
    disp("polynomial is:",f);
    disp("Polynomial :",x);
    a=input("Enter a:");
    b=input("Enter b:");
    c=input("Enter c:");
    
    if(a==0)then
        disp("A will not 0:");
    else
        x1=(-b+sqrt((b*b)-(4*a*c)))/2*a;
        x2=(-b-sqrt((b*b)-(4*a*c)))/2*a;
        disp("Root of x1:",x1);
        disp("Root of x2:",x2);
     end
    */
    
//Q2
/*
x = poly(0,'x');
f = input("Enter the polynomial: ");
disp("Polynomial:", f);

true_x = input("Enter the true value of x: ");
approx_x = input("Enter the approx value of x: ");

// Calculate f(x)
cal_true = horner(f, true_x);
cal_approx = horner(f, approx_x);

// Errors
tr_error = cal_true - cal_approx;
relative = tr_error / cal_true;

per_true = tr_error * 100;
per_relative = relative * 100;

// Display
disp("True error:", tr_error);
disp("Relative error:", relative);
disp("% True error:", per_true);
disp("% Relative error:", per_relative);
 */   


//Q3
//code for  exponential series of TE & RE 

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
















    
//Q3
/*
x = input("Enter value of x: ");
n = input("Enter number of terms: ");

true_value = exp(x);
approx = 0;

for k = 0:n-1
    approx = approx + (x^k) / factorial(k);
end
true_error = true_value - approx;
relative_error = true_error / true_value;
disp("True Value = " + string(true_value))
disp("Approx Value = " + string(approx))
disp("True Error = " + string(true_error))
disp("Relative Error = " + string(relative_error))
disp("Percentage True Error = " + string(true_error*100))
disp("Percentage Relative Error = " + string(relative_error*100))
*/
