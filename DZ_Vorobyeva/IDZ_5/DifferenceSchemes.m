#Б9120-09.03.04прогин Воробьева Кристина
#Найти значение первой и второй производной в центре интервала 
#при помощи разностных схем различного порядка
#27. y(x) = x*sin(x)

clear all
format long;
output_precision(15);

x = [0.2*pi 0.4*pi 0.6*pi 0.8*pi pi]'; #center 0.6*pi
y = x.*sin(x)
for i=0.2*pi:0.2:pi
pr=sin(i) + i*cos(i);
endfor

y = (0.8*pi*sin(0.8*pi)-0.6*pi*sin(0.6*pi))/0.2 #f'(x) = (f(x+dx) - f(x))/dx + O(dx) || f(x+dx)
y = (0.6*pi*sin(0.6*pi)-0.4*pi*sin(0.4*pi))/0.2 #f'(x) = (f(x) - f(x-dx))/dx +O(dx) || f(x-dx) // Схема центральной разности
y = (0.8*pi*sin(0.8*pi)-0.4*pi*sin(0.4*pi))/(2*0.2) #f'(x) = (f(x+dx) - f(x-dx))/2dx + O(dx^2) || f(x+dx) - f(x-dx) //
y = (0.8*pi*sin(0.8*pi) - 2*0.6*pi*sin(0.6*pi) + 0.4*pi*sin(0.4*pi))/(3*0.2) # f''(x) = (f(x+dx) - 2f(x) + f(x-dx))/(dx)^2  || f(x+dx) + f(x-dx)
