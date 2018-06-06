function [theta, J_history] = gradienteDescendenteMulti(X, y, theta, alpha, num_iters)



m = length(y); 
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== SU CÓDIGO ======================
    %x = X(:,2);
    %x = X
    %temp0 = theta(1) - alpha * (1/m) * sum((theta(1) + (theta(2)*x)) - y);
    %theta(1) = temp0;
 
    theta = theta -((1/m) * ((X * theta) - y)' * X)' * alpha;

    %for theta_j = 2: columns(X)

     %     theta_j
      %    temp_j = theta(theta_j) - alpha * (1/m) * sum(((theta(theta_j-1) + 
       %   (theta(theta_j)*x)) - y).*x)
        
        %  theta(theta_j) = temp_j;
      
   % end
   
    





    % ============================================================

    % guardar los valores del costo 
    J_history(iter) = costoMulti(X, y, theta);

end

end
