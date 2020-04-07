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

