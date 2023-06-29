function [theta, cost_history] = gradientDescent(X, y, theta, alpha, num_iters)
    m = length(y);
    
    % initialize cost history
    cost_history = zeros(num_iters, 1);

    for iter = 1:num_iters
        predictions = X * theta;
        errors = predictions - y;
        theta = theta - (alpha / m) * (X' * errors); % update theta
        cost_history(iter) = computeCost(X, y, theta); % update compute cost
    end
end
