%Karolis_Chmeliauskas_EEf-25/2
%2026-09-29
clear;
clc; 
close all;

%%TRIMATIS GRAFIKU VAIZDAVIMAS%%

%A
figure
teta = 0:0.01:2*pi;
r = 0:1;
[teta,r] = meshgrid(teta, r);
x = r .* cos(teta);
y = r .* sin(teta);
f = 1-2*x.^2-3*y.^2;
surf(x,y,f);
colormap winter;
shading interp;
lighting gouraud;
camlight headlight;
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');
view(50, 50);
grid on;

%B
figure(2)
x = (2*rand(1,200) - 1) * sqrt(pi/2);
y = (2*rand(1,200) - 1) * sqrt(pi/2);
[X, Y] = meshgrid(x, y);
Z = sin(X.^2 + Y.^2);
surf(X, Y, Z);
colormap turbo;
shading interp;
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = sin(x^2 + y^2)');
view(30, 30);
grid on;

%PAPILDOMA%

x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);
[X,Y] = meshgrid(x,y);
Z = 1 - (X.^2 + Y.^2);


%A
figure(3);
subplot(3,1,1),
surf(X,Y,Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Paviršius su apšvietimu');
colormap("parula");
shading interp;
lighting gouraud;
camlight headlight;
grid on;
view(45,30);


%B

subplot(3,1,2);
surf(X,Y,Z);
hold on;
contour3(X,Y,Z,20,'k');
xlabel('x');
ylabel('y');
zlabel('z');
title('Paviršius su kontūru');
colormap("spring");
shading interp;
grid on;
view(45,30);
hold off;


%C
subplot(3,1,3);
surf(X,Y,Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Paprastas funkcijos paviršius');
colormap("hsv");
grid on;
view(45,30);