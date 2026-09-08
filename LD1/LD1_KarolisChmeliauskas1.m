%Karolis_Chmeliauskas_EEf-25/2
%2026-09-08
N=3;
x = 1:32;
y = x.^2;
a=[2 1;1 2];
b=[0 3 2;];

plot(x, y, 'o-r', x, y / 3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-] | F_2 [-x-]')
%help sin;   
%help plot;
%help title;
%doc sin;
%doc plot;
%doc title;
%lookfor sin;   
%lookfor plot;
%lookfor title;
linspace (1,2,10)%3 arg

size(a)% masyvo dydi eilutes stulpeliai

max(b)%didziausias elementa

v = N+1:0.5:N+4
A=[N N+1 N+2;N+3 N+4 N+5; N+6 N+7 N+8]
a=A(3,2)
a1=A(2:3,1:2)
a2=A([1 3],[1 3])
A = [A v(1:3)']