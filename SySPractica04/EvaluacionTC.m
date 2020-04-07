function EvaluacionTC(f,a,b,n)
h= (b-a)/n; 
fs=0; 
for i=1:n-1
    x=a+h*i; 
    
    fs= fs+(1/pi)*eval(f)*exp(-j*n*2*x); 
end
x=a;
f0=eval(f); 
x=b; 
fn=eval(f); 
integral= 0.5*h*(f0+2*fs+fn)
end 