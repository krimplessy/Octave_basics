#Б9120-09.03.04прогин Воробьева Кристина
#Найти значение с помощью интерполяционного полинома Ньютона
#27. y(x) = x*sin(x)

clear all
format long;
output_precision(15);

x = [0.2*pi 0.4*pi 0.6*pi 0.8*pi pi]'; #center 0.6*pi
y = x.*sin(x);
n = 5;
dy(1:1:n, 1:1:n) = 0;
dy(:,1) = y;

for j=2:1:n
for i=1:1:(n-j+1)
dy(i,j) = dy(i+1,j-1) - dy(i,j-1);
endfor
endfor
dy;
y= 1/3*(dy(1,2) + 3*dy(1,3)/2 + 2*dy(1,4)/6 - 2*dy(1,5)/24)