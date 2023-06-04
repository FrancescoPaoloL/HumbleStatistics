function [theta, cost_history] = gradientDescent(X, y, theta, alpha, num_iters)
    m = length(y); % number of training examples
    cost_history = zeros(num_iters, 1);

    for iter = 1:num_iters
        h = X * theta; % hypothesis or predicted values

        theta = theta - (alpha/m) * X' * (h - y); % update theta
        
        % Save the cost J in every iteration
        cost_history(iter) = sum((X * theta - y).^2) / (2*m);
    end
end
