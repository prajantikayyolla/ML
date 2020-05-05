function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
d=zeros(length(theta), 1);
min_theta=zeros(length(theta), 1);
min_J=0;
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    for iter1 = 1:length(d)
      d(iter1)=sum((X*theta-y).*X(:,iter1))/m;
    endfor
    theta=theta-alpha*d;
    

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
    if (iter==1)
      min_theta=theta;
      min_J=J_history(iter);
    elseif (J_history(iter)<min_J)
      min_theta=theta;
      min_J=J_history(iter);
    endif

end
theta=min_theta;
end
