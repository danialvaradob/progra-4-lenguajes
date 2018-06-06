function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE normaliza las características



X_norm = X;
X_norm
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== SU CÓDIGO ======================
% Instrucciones: para cada dimensión calcular la media
%                de la característica y restarle eso al dataset,
%               guarde la media en mu. Luego calcule la desviación estándar y
%		divida eso entre todas las características, guarde esa desviación en sigma. 
%
%
% Nota: octave tiene la funciones mean y std que le pueden ser útiles
%       

mu    = mean(X)
sigma = std(X)

indicies = 1:size(X, 2);

for i = indicies,
  XminusMu  = X(:, i) - mu(i);
  X_norm(:, i) = XminusMu / sigma(i);
  X_norm;
end







% ============================================================

end
