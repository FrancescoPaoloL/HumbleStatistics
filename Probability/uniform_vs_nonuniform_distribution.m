graphics_toolkit fltk

% Uniform distribution: Generate an array of n random numbers between 1 and 10
n = 1000;  % Number of random numbers

range_min = 1;
range_max = 10;
scaling_factor = range_max - range_min;
shifting_value = range_min;
uniform_numbers = rand(1, n) * scaling_factor + shifting_value;

% Non-uniform distribution: Generate an array of n random numbers with different probabilities
choices = [1, 2, 3, 4, 5];
probabilities = [0.4, 0.3, 0.1, 0.1, 0.1]
non_uniform_numbers = zeros(1, n);
for i = 1:n
    rand_num = rand();
    cumulative_prob = 0;
    for j = 1:numel(choices)
        cumulative_prob = cumulative_prob + probabilities(j);
        if rand_num <= cumulative_prob
            non_uniform_numbers(i) = choices(j);
            break;
        end
    end
end

%%%% Show the result %%%%

% Set the dark theme
dark_color = [0.15 0.15 0.15];

white_color = 'w';

set(0, 'defaultfigurecolor', dark_color);
set(0, 'defaultaxescolor', dark_color);
set(0, 'defaulttextcolor', white_color);
set(0, 'defaultaxesxcolor', white_color);
set(0, 'defaultaxesycolor', white_color);
% end Set the dark theme


% Plot the random numbers
figure('name', 'Uniform vs non-uniform distribution');

subplot(2, 1, 1);
plot(1:n, uniform_numbers, 'y.');  % Change the color to yellow
title('Uniform Distribution');
xlabel('Index');
ylabel('Value');

subplot(2, 1, 2);
plot(1:n, non_uniform_numbers, 'r.');
title('Non-uniform Distribution');
xlabel('Index');
ylabel('Value');


% Adjust the subplot layout
set(gcf, 'Position', get(0, 'ScreenSize'));

% Wait for the user to manually close the plot window
uiwait(gcf);
