graphics_toolkit fltk

% Example function f(x) = x^2

% Generate some random x values
x = linspace(-5, 5, 100)';
% Compute corresponding f(x) values
y = x.^2;

% Add bias term and quadratic term to X
X = [ones(size(x)) x x.^2];

% Initialize theta (parameters)
theta = zeros(3, 1);

% Set the learning rate (alpha) and number of iterations
alpha = 0.01;
num_iters = 1000;

% Call the gradientDescent function to find the optimal theta
[theta, cost_history] = gradientDescent(X, y, theta, alpha, num_iters);

% Display the optimal parameters
fprintf('Optimal theta: %.2f, %.2f, %.2f\n', theta(1), theta(2), theta(3));

% Plot the cost history, original data points, and the fitted curve
figure;
subplot(2, 2, 1);
plot(1:num_iters, cost_history, 'b-');
xlabel('Iteration');
ylabel('Cost');
title('Cost History');

subplot(2, 2, 2);
plot(x, y, 'ro', 'MarkerSize', 5, 'MarkerFaceColor', 'r');
hold on;
plot(x, X * theta, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('f(x)');
title('Original Data and Fitted Curve');
legend('Data', 'Fitted Curve');

% Initialize an array to store the training set sizes
training_set_sizes = 1:size(X, 1);

% Initialize an array to store the training set errors
training_set_errors = zeros(size(training_set_sizes));

% Iterate over different training set sizes
for i = 1:length(training_set_sizes)
    % Select a subset of the training set
    X_subset = X(1:training_set_sizes(i), :);
    y_subset = y(1:training_set_sizes(i));
    
    % Call the gradientDescent function to find the optimal theta
    [theta, cost_history_subset] = gradientDescent(X_subset, y_subset, theta, alpha, num_iters);
    
    % Store the final cost from the subset's cost history
    training_set_errors(i) = cost_history_subset(end);
end

% Plot the learning curve
subplot(2, 2, [3 4]);
plot(training_set_sizes, training_set_errors, 'b-');
xlabel('Training Set Size');
ylabel('Training Set Error');
title('Learning Curve');

% Keep the plot window open until manually closed
waitfor(gcf);


