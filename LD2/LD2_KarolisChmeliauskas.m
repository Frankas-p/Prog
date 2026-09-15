%Karolis_Chmeliauskas_EEf-25/2
%2026-09-15
clear all;
%%VIENMAČIAI MASYVAI%%

%a

a = 10:-1:-15

%b
b = log2(a)

%c
c = a ./ b

%d
d = c'
d = c(:)

%%DVINMAČIAI MASYVAI%%

%a
Cm1 = [pi/2:pi/2:(3*pi)/2];

Cm2 = [-1:1];

Cm3 = [-3:-1:-5];

C = [Cm1 ; Cm2 ; Cm3]

%b
Pirm = sum(C(1,:))
Antr = sum(C(2,:))
Tre = sum(C(3,:))

%%PRAKTINIS VEIKSMU SU MASYVAIS TAIKYMAS%%
A = 6; %V
f = 4; %Hz
ro = 1.2; %V
U1 = 3.5; %V
U2 = 2.5; %V

t = 0:0.001:1.5;%s
s = A*sin(2*pi*f*t)+0.5*A*cos(4*pi*f*t);
n = ro * randn(size(t));
sb = s + n ;

%a 
virs = (sb > U1)

%b???
maz = (abs(sb) < U2) == 0 
 
%c
dydis = length(sb)

%d 
dydis2 = length(virs( virs== 1))

%e
max(sb)
min(sb)

%%PAPILDOMA%%

A = input('Įveskite vektorių A:')
B = [];
for i = 1:length(A);
    kart = repmat(A(i),1 ,i);
    B = [B, kart];
end
disp('Vektorius B yra: ')
disp(B)