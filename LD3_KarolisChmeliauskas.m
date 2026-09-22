%Karolis_Chmeliauskas_EEf-25/2
%2026-09-22
clear all;

%DVIMATIS GRAFIKU VAIZDAVIMAS%

%a
figure

x = 0:200/299:200;
f = 2*exp(-0.02*x).*cos(0.2*x);
plot(x, f, 'g-o', 'LineWidth', 10)

title('Funkcijos f(x) grafikas:');
xlabel('x');
ylabel('y');
legend('f(x)');
axis([min(x) max(x) min(f) max(f)]);
grid on 

%b
figure(2)
z1 =-pi:0.01:-0.01;
z2 = 0.01:0.01:pi;
z = [z1',z2'];
f = cot(z);
plot(z,f)

grid on 
title('Funkcijos f(z) grafikas:');
xlabel('x');
ylabel('y');
legend('f(z)');
%axis([min(z) max(z) min(f) max(f)]);
grid on 

%specializuotu grafiku kurimas

%a
figure(3)
x = 0:0.01:10*pi;
y = sin(x).*cos(x);
z = cos(x);
subplot(2,1,1);
plot3(x,y,z)
title('Funkcijos y() grafikas:');
xlabel('x');
ylabel('y');
zlabel('z');
grid on 
%b
subplot(2,1,2);
polarplot(x,y,'r')
title('Funkcijos z(x) grafikas:');
xlabel('x');
ylabel('y');
zlabel('z');
grid on 


%papildoma
A = 6; % V
f = 4; % Hz
ro = 1.2; % V
U1 = 3.5; % V
U2 = 2.5; % V

t = 0:0.001:1.5; % s

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = ro * randn(size(t));
sb = s + n;

% a
virs = sb > U1;

% b
maz = abs(sb) > U2;

% c
dydis = length(sb)

% d
dydis2 = length(virs(virs == 1))

% e
maks = max(sb)
minim = min(sb)




figure(4);
rag(24);

subplot(2,1,1)

plot(t, s, '--', 'LineWidth', 1); hold on;
plot(t, sb, '-', 'LineWidth', 1.75);

yline(U1, 'r--', 'U_1', 'LineWidth', 1.2);
yline(U2, 'b-.', 'U_2', 'LineWidth', 1.2);

yline(-U1, 'r--', '-U_1', 'LineWidth', 1.2);
yline(-U2, 'b-.', '-U_2', 'LineWidth', 1.2);

grid on;

title('Pradinis ir filtruotas signalai', ...
    'FontSize', 13, 'FontWeight', 'bold');

xlabel('Laikas, t (s)');
ylabel('Įtampa, U (V)');

legend('Pradinis signalas', 'Signalas su triukšmu', ...
       'U_1 riba', 'U_2 riba', ...
       '-U_1 riba', '-U_2 riba');

xlim([0 1.5]);



subplot(2,1,2)


virs_s = s;
virs_s(~virs) = NaN;

plot(t, virs_s, 'LineWidth', 1.5);
hold on;

[pksMax, locMax] = findpeaks(s);
[pksMin, locMin] = findpeaks(-s);

pksMin = -pksMin;


plot(t(locMax), pksMax, 's', ...
    'Color', [0.5 0 0.8], ...
    'MarkerSize', 8, ...
    'MarkerFaceColor', [0.5 0 0.8]);

plot(t(locMin), pksMin, 's', ...
    'Color', [0.5 0 0.8], ...
    'MarkerSize', 8, ...
    'MarkerFaceColor', [0.5 0 0.8]);

yline(U1, 'r--', 'U_1', 'LineWidth', 1.2);

grid on;

title('Pradinio signalo reikšmės, viršijančios U_1', ...
    'FontSize', 13, 'FontWeight', 'bold');

xlabel('Laikas, t (s)');
ylabel('Įtampa, U (V)');

legend('s > U_1', 'Maksimumai', 'Minimumai', 'U_1 riba');

xlim([0 1.5]);
