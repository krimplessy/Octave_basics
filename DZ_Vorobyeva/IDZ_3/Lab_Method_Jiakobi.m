%Метод Якоби%матрица с диагоняльным преобладанием по модулю%итерационные методыclear alln=4B=[-119 79 -24 -52]';A=[21 1 -8 4; -9 -23 -2 4; 7 -1 -17 6;8 8 -4 -26];A^(-1)*BX=[0 0 0 0]';X0=X;for k=1:1:100for i=1:1:n   sum=0;  for j=1:1:(i-1)    sum=sum+A(i,j)*X0(j);
  endfor  for j=(i+1):1:n    sum=sum+A(i,j)*X0(j);
  endfor  X(i)=-sum/A(i,i)+B(i)/A(i,i);  endfor  X0=X;  [k mean(abs(A*X-B))]  endfor
