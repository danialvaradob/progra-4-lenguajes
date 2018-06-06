function [theta, J_history] = gradienteDescendente(X, y, theta, alpha, num_iters)


% inicialización de algunos valores importantes
m = length(y); % número de training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== SU CÓDIGO ======================
    % Instrucciones: Ejecute actualización de parámetros
    %
    % Nota: Para debuggear podría ir imprimiendo el costo, 
    % con los parámetros encontrados en cada iteración
    %

    %temp0 = theta(1);
    %temp1 = theta(2); 
    
    
    x = X(:,2);
    temp0 = theta(1) - alpha * (1/m) * sum((theta(1) + (theta(2)*x)) - y)
    temp1 = theta(2) - alpha * (1/m) * sum(((theta(1) + (theta(2)*x)) - y).*x)
    theta(1) = temp0;
    theta(2) = temp1;
    

    




    % ============================================================

    % Guardar el costo J de cada iteración
    % -esto no es necesario, pero lo usaremos para graficar más adelante-
    J_history(iter) = costo(X, y, theta);

end

end
