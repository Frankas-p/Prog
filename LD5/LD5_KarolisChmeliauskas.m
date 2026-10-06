%Karolis_Chmeliauskas_EEf-25/2
%2026-10-06
clear;
clc; 
close all;

%%STRUKTUROS%%

%A

duomenys(1).vp = 'Karolis Chmeliauskas';
duomenys(1).gn = 'EEf-25/2';
duomenys(1).pz = [8 8 7 9 8 9 9];

%B

duomenys(2).vp = 'Arnas Latauskas';
duomenys(2).gn = 'EEf-25/2';
duomenys(2).pz = [6 8 7 5 8 9 9];

duomenys(3).vp = 'Benas Murkiauskas';
duomenys(3).gn = 'EEf-25/2';
duomenys(3).pz = [8 8 7 9 6 5 9];

duomenys(2).pz(3) = 10
duomenys.pz

%%SRAUTO VALDYMO KONSTRUKTORIAI%%

A = round(10 * rand + 1);

spejimas = input('Spėkite skaičių nuo 1 iki 11: ');

while spejimas ~= A

    if spejimas < A
        disp('Skaičius per mažas');
    else
        disp('Skaičius per didelis');
    end

    spejimas = input('Spėkite dar kartą: ');
end

disp('Atspėjote!');

%%PAPILDOMA%%

sakinys = input('Įveskite sakinį: ', 's');

pradinis = sakinys;

i = 1;
pasalinta = 0;

while i < length(sakinys)
    if sakinys(i) == ' ' && sakinys(i+1) == ' '
        sakinys(i) = [];
        pasalinta = pasalinta + 1;
    else
        i = i + 1;
    end
end

disp(['Pakeistas sakinys: ', sakinys]);
disp(['Pašalinta tarpų: ', num2str(pasalinta)]);
