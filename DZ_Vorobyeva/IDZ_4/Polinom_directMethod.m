#Б9120-09.03.04прогин Воробьева Кристина
#Построить интерполяционный полином(канонический метод)
#27. y(x) = x*sin(x)

clear all;
format long;
output_precision(15);

n = 6;
x = [0 0.2*pi 0.4*pi 0.6*pi 0.8*pi pi]';
y = [1 1 1 1 1 1]';

for i = 1:1:n
  y(i) = x(i)*sin(x(i));
  y(i)
endfor

for i = 1:1:n
  for j = 1:1:n
    A(i,j) = x(i)^(j-1);
  endfor
endfor

k = A^(-1)*y;
x0 = 21;
sum = 0;
for i = 1:1:n
  sum = sum + k(i)*x0^(i-1);
endfor
sum;
plot(x, y, 's', 'MarkerEdgeColor', 'k', 'MarkerSize', 10, x, y, '-', 'LineWidth', 2)