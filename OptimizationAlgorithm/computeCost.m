function J = computeCost(X, y, theta)
    m = length(y); % as number of training examples

    predictions = X * theta;
    squaredErrors = (predictions - y).^2;
    J = 1 / (2 * m) * sum(squaredErrors);
end