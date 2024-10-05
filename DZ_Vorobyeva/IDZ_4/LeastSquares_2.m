#Б9120-09.03.04прогин Воробьева Кристина
#Методом наименьших квадратов построить 
#аппроксимирующую функцию второй степени.
#27. y(x) = x*sin(x)

clear all;
format long;
output_precision(15);

n = 6;
x = [0 0.2*pi 0.4*pi 0.6*pi 0.8*pi pi]';
y = [1 1 1 1 1 1]';
N = 2;

for i = 1:1:n
  y(i) = x(i)*sin(x(i));
  y(i)
endfor

for i = 1:1:(N + 1)
  B(i) = sum(y.*(x.^(N - i + 1)));
endfor  

for i = 1:1:(N + 1)
  for j = 1:1:(N + 1)
    A(i, j) = sum(x.^(2 * N - i - j + 2));
  endfor
endfor

X = A^(-1) * B';
x2 = (0:1:18)';
y2(1:1:length(x2)) = 0;

for i = 1:1:(N + 1)
  y2 = y2 + X(i) * x2.^(N - i + 1);
endfor
A;

plot(x, y, 's', 'MarkerEdgeColor', 'k','MarkerSize', 10, x2, y2, '-', 'LineWidth', 2)  