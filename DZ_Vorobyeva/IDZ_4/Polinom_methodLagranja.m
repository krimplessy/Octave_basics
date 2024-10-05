#Б9120-09.03.04прогин Воробьева Кристина
#Построить интерполяционный полином(метод Лагранжа)
#27. y(x) = x*sin(x)

clear all;
format long;
output_precision(15);

n = 6;
x = [0 0.2*pi 0.4*pi 0.6*pi 0.8*pi pi]';
y = [1 1 1 1 1 1]';
x0 = 21;
sum = 0;

for i = 1:1:n
  y(i) = x(i)*sin(x(i));
  y(i)
endfor

for i = 1:1:n
  pr = 1;
  for j = 1:1:(i-1)
    pr = pr*(x0-x(j))/(x(i)-x(j));
  endfor
  for j = (i+1):1:n
    pr = pr*(x0- x(j))/(x(i)-x(j));
  endfor
  sum = sum + pr*y(i);
endfor
sum;

plot(x, y, 's', 'MarkerEdgeColor', 'k', 'MarkerSize', 10, x, y, '-', 'LineWidth', 2)