function C = farenh2cels(F)
% FARENH2CELS Konvertuoja temperatūrą iš Farenheito į Celsijų.
%   C = FARENH2CELS(F) apskaičiuoja temperatūrą Celsijaus laipsniais,
%   kai F yra temperatūra Farenheito laipsniais.

%   Formulė: C = 5*(F - 32)/9

C = 5 * (F - 32) / 9;

end