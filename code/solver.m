clc;
clear;
close all;

% Initial Conditions
q0 = 1e-6;
h0 = 1e-6;
z0 = 0;
initial = [q0, h0, z0];

% Domain
xspan = linspace(-1, 1, 500);  % Normalized domain from -R to R

% Solve ODEs
[x, y] = ode15s(@ODEsfun, xspan, initial);

% Plot Mass Efflux q(x)
figure;
plot(x, y(:,1), 'b', 'LineWidth', 2);
xlabel('x (length)');
ylabel('Mass efflux q(x)');
title('Mass Efflux vs Length');
grid on;

% Plot Flowing Layer Depth h(x)
figure;
plot(x, y(:,2), 'r', 'LineWidth', 2);
xlabel('x (length)');
ylabel('Flowing Layer Depth h(x)');
title('Flowing Layer Depth vs Length');
grid on;

% Plot Free Surface z(x)
figure;
plot(x, y(:,3), 'g', 'LineWidth', 2);
xlabel('x (length)');
ylabel('Free Surface z(x)');
title('Free Surface vs Length');
grid on;
