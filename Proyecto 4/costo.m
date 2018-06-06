function J = costo(X, y, theta)
%Costo de la regresión lineal
%   J = COSTO(X, y, theta) 

% Inicializar parámetros
m = length(y); % cantidad de examples

% el siguiente es el valor que se necesita retornar correctamente.
J = 0;


% ====================== SU CÓDIGO ======================
f = (X*theta - y).^2;


J =   1/(2*m) *(sum(f));





% =========================================================================

endfunction

