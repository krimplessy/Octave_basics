clear all
n=4;
a=[2 -8 0 5; -9 9 -7 6; -6 7 3 8; -1 8 5 1];
det(a)
ab=a;
ab0=ab;
for j=1:1:(n-1)
  for i=(j+1):1:n
    for k=1:1:n
      ab0(i,k)=ab(i,k)-ab(j,k)*ab(i,j)/ab(j,j);
    endfor
    ab=ab0;
    endfor
  endfor
for j=n:(-1):2
  for i=(j-1):(-1):1
    for k=1:1:n
      ab0(i,k)=ab(i,k)-ab(j,k)*ab(i,j)/ab(j,j);
    endfor
    ab=ab0;
    endfor
  endfor
  answer=1;
  for j=1:1:n
    answer=answer*ab(j,j);
  endfor
answer