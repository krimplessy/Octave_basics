% Интерполяционный полином Лагранжа
clear all
n = 4
x = [1 3 5 7]';
y = [2 10 5 7]';
x0 = 2; %погода на след день
sum = 0;
for i = 1:1:n 
  pr = 1;
  for j = 1:1:(i-1)
    pr = pr*(x0-x(j))/(x(i)-x(j));
  endfor
  for j = (i+1):1:n
    pr = pr*(x0-x(j))/(x(i)-x(j));
  endfor
  sum = sum + pr*y(i);
endfor
sum
