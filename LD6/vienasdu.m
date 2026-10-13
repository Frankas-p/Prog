
function [s, c] = vienasdu(x)
% VIENASDU Apskaiciuoja sin(x) ir cos(x).
%   S = VIENASDU(X) grazina sin(x).
%   [S, C] = VIENASDU(X) grazina sin(x) ir cos(x).
%
%   X - iejimo argumentas.
%   S - sin(x) reiksme.
%   C - cos(x) reiksme.

s = sin(x);

if nargout > 1
    c = cos(x);
end

end