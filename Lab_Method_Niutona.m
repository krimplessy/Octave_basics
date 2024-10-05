%Метод Ньютона

clear all
f=@(x)(x.^3.*cos(x)+x.*exp(2*x)-6);
df=@(x)(3*x.^2.*cos(x)-x.^3.*sin(x)+exp(2*x)+2*x*exp(2*x));
e=0.00001;
x0=0;
while abs(f(x0))>e
  x=x0-f(x0)/df(x0);
  x0=x;
endwhile

[x0 f(x0)]
  