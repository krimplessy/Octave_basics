#�9120-09.03.04������ ��������� ��������
#����� �������� ������������� ��������� ��� ������ ������������ ������ ������������� 0-4 ��������.
#27. y(x) = x*sin(x)

clear all;
format long;
output_precision(15);

n = 5;
x = [0.2*pi 0.4*pi 0.6*pi 0.8*pi pi]';
dx = 3;
for i = 1:1:n
  y(i) = x(i)*sin(x(i));
endfor
y;

#�-�� 0 �������
dx*y(1) #dx*f0

#�-�� 1 ������� 
(dx/2)*(y(2)+y(1)) #dx/2 * (f1+f0)

#�-�� 2 �������
(dx/3)*(y(1) + 4*y(2) + y(3))#dx/3 * (f0 + 4f1 + f2)

#�-�� 3 �������
((3*dx)/8)*(y(1) + 3*y(2) + 3*y(2) + y(4)) #(3*dx)/8 * (f0 + 3f1 + 3*f2 + f3)

#�-�� 4 �������
((2*dx)/45)*(7*y(1) + 32*y(2) + 12*y(3) + 32*y(4) + 7*y(5)) #(2*dx)/45 * (7*f0 + 32*f1 + 12*f2 + 32*f3 + 7*f4)
