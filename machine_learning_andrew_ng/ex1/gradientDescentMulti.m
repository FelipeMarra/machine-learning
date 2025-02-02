function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
disp("ABACATE")
disp(X)
disp("ARROZ")
disp(theta)
for iter = 1:num_iters

  % ====================== YOUR CODE HERE ======================
  % Instructions: Perform a single gradient step on the parameter vector
  %               theta. 
  %
  % Hint: While debugging, it can be useful to print out the values
  %       of the cost function (computeCostMulti) and gradient here.
  %
  
  %algo de errado n�o est� certo
  
  columns = size(X,2);
  temp = zeros(1,columns);
  soma = zeros(1,columns);
  
  h = X * theta;

  for c=1:columns
    for r=1:m
      soma(c) = soma(c) + (h(r) - y(r)) * X(r,c);
    end
  temp(c) = theta(c) - (alpha * (1/m) * soma(c));
  end
  
  for c=1:columns
    theta(c) = temp(c);
  end

  % ============================================================

  % Save the cost J in every iteration    
  J_history(iter) = computeCostMulti(X, y, theta);

end

end
