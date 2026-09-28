%Karolis_Chmeliauskas_EEf-25/2
%2026-09-22
clear; clc; close all;

%DVIMATIS GRAFIKU VAIZDAVIMAS%

%a
figure

x = 0:200/299:200;
f = 2*exp(-0.02*x).*cos(0.2*x);
plot(x, f, 'g-', 'LineWidth', 10)

title('Funkcijos f(x) grafikas:');
xlabel('x');
ylabel('y');
legend('f(x)');
axis([min(x) max(x) min(f) max(f)]);
grid on 

%b
figure(2)
z1 = -pi+0.01:0.01:-0.01;
z2 = 0.01:0.01:pi-0.01;
plot(z1, cot(z1), 'b', z2, cot(z2), 'b')
title('Funkcijos f(z) grafikas:');
xlabel('x');
ylabel('y');
legend('f(z)');
axis([-pi pi -10 10]);
grid on 

%specializuotu grafiku kurimas

%a
figure(3)
x = 0:0.01:10*pi;
y = sin(x).*cos(x);
z = cos(x);
subplot(2,1,1);
plot3(x,y,z)
xlabel('x');
ylabel('y'); 
zlabel('z');
title('Funkcijos a grafikas:');
grid on 
%b
subplot(2,1,2);
polarplot(x,y,'r')
title('Funkcijos b grafikas:');
grid on 



A = 6; 
f = 4; 
ro = 1.2; 
U1 = 3.5; 
U2 = 2.5;
t = 0:0.001:1.5;
s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = ro * randn(size(t));
sb = s + n;

% a
virs = sb(sb > U1);

% b
sf = sb;
sf(abs(sf) < U2) = 0;

% c d e
dydis  = length(sb);
dydis2 = length(virs);
maxSf  = max(sf);
minSf  = min(sf);


figure(4)
% 1 
subplot(1,2,1)
plot(t, sb, '--', 'LineWidth', 1); hold on
plot(t, sf, '-',  'LineWidth', 1.75);
yline(U1, '-.b', 'LineWidth', 1);
yline(U2, '-.b', 'LineWidth', 1);
title('Pradinis ir filtruotas signalai', 'FontAngle', 'italic', 'FontSize', 13);
xlabel('t, s'); ylabel('U, V');
legend('Pradinis signalas', 'Filtruotas signalas', 'Riba U_1', 'Riba U_2');
axis([min(t) max(t) min(sb)-1 max(sb)+1]);
grid on

% 2 
subplot(1,2,2)
idx = sb > U1;
tv = t(idx);
vv = sb(idx);
stem(tv, vv, 'g'); hold on
[vmax, ~] = max(vv);
[vmin, ~] = min(vv);
imax = vv == vmax;   
imin = vv == vmin;  
plot(tv(imax), vv(imax), 's', 'MarkerSize', 8, ...
    'MarkerEdgeColor', [0.5 0 0.5], 'MarkerFaceColor', [0.5 0 0.5]);
plot(tv(imin), vv(imin), 'ro', 'MarkerSize', 8);
title('Reikšmės, viršijančios U_1', 'FontAngle', 'italic', 'FontSize', 13);
xlabel('t, s'); ylabel('U, V');
legend('Reikšmės > U_1', 'Maksimali reikšmė', 'Minimali reikšmė');
axis([min(t) max(t) 0 max(vv)+1]);
grid on
