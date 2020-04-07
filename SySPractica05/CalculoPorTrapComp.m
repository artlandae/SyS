syms t
armo = 4;
t0 = pi;
TC=TrapCompuesto('(exp(-x/2)',0,pi,15)
for n = 0:armo
    dn = (1/t0)*int(TC*exp(-j.*n.*2.*t),t,0,pi);
    fprintf('%d\t%f\n',n,abs(dn))
end

function TrapCompuesto(f,a,b,n)
h= (b-a)/n; 
fs=0; 
for i=1:n-1
    x=a+h*i; 
    fs= fs+eval(f); 
end
x=a;
f0=eval(f); 
x=b; 
fn=eval(f); 
integral= 0.5*h*(f0+2*fs+fn)
end 