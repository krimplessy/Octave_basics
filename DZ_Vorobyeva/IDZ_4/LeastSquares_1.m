#Б9120-09.03.04прогин Воробьева Кристина
#Методом наименьших квадратов построить 
#аппроксимирующую функцию первой степени.
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

A = [sum(x.*x) sum(x); sum(x) n];
B = [sum(y.*x) sum(y)]';

X = A^(-1) * B;

#проверка, что все найдено верно
if (AX=B) 
   c="все верно";
 else 
   c="где то ошибка";
endif
c

#вывод графика
k = X(1);
b = X(2);
x2 = (0:1:18);
y2 = k * x2 + b;

plot(x, y,'s','MarkerEdgeColor','k','MarkerSize',10, x2,y2,'-','LineWidth',2)