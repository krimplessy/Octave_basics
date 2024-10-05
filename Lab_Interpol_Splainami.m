% Интерполяция сплайнами
% Количество парабол соответствует количеству точек - 1

clear all
n = 4
x = [1 3 5 7 9]';
y = [9 19 9 10 12]';
A(1:1:2*n, 1:1:2*n) = 0;
B(1:1:2*n) = 0;

for i = 1:1:n 
  B(i) = y(i + 1) - y(i);
endfor 

for i = 1:1:n
  A(i, 2*i - 1) = (x(i+1) - x(i))^2;
  A(i, 2*i) = x(i+1) - x(i);
endfor

for i = 1:1:n-1
  A(i + n, 2*i - 1) = 2*(x(i + 1) - x(i));
  A(i + n, 2*i) = 1;
  A(i + n, 2*i + 2) = -1;
endfor

A(2*n, 2) = 1;
X = A^(-1)*B' % Точки параболы (a1, b1, ..., a4, b4)

for i = 1:1:n
  a(i) = X(2*i - 1);
  b(i) = X(2*i);
  c(i) = y(i);
endfor

k = 0;

for i = 1:1:n
  for j = x(i):0.01:x(i+1)
    k = k+1;
    x2(k) = j;
    y2(k) = a(i)*(x2(k)-x(i))^2 + b(i)*(x2(k)-x(i))+c(i);
  endfor
endfor

plot(x, y, 'o', 'MarkerEdgeColor', 'k', 'MarkerSize', 10, x2, y2, '-', 'LineWidth', 2)
% Выводит график
