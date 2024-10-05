%Метод дихотомии
%Метод локализации корней

clear all
f=@(x)(x.^3.*cos(x)+x.*exp(2*x)-6);
x=[-100:10:100]';
y=f(x);
[x y]
e=0.000001;
a=0;
b=10;
k=0;

do
  k=k+1;
  c=(a+b)/2;
  if f(a)*f(c)<0
    b=c;
  endif
  if f(c)*f(b)<0
    a=c;
  endif
until abs(f(c))<e

[k c f(c)]
