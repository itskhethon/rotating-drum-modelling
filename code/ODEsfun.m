function ODEs = ODEsfun(x, y)
% ODEsfun - Defines the system of ODEs for rotating drum flow
% Inputs: 
%   x - spatial coordinate
%   y - vector [q; h; z] for mass efflux, flowing layer depth, and surface height
% Outputs:
%   ODEs - Derivatives [dq/dx; dh/dx; dz/dx]

% Define variables
q = y(1); 
h = y(2);   
z = y(3); 

% Parameters
kappa = 342853 / 233376;
gamma = 77 / 48;
g = 9.81;          % Gravity [m/s^2]
R = 0.2;           % Drum radius [m]
L = 0.04;          % Drum length [m]
omega = 10;        % Drum speed [RPM]
d = 2e-3;          % Particle diameter [m]
alpha = deg2rad(18); % Convert degrees to radians
zeta = 0.5;        % Fill fraction
mu_wall = 0.35;    % Wall friction coefficient
mu_basal = 0.33;   % Basal friction coefficient
chi = 0.52;        % Rheological coefficient

% Entrainment number
omega_o = (omega * R^(9/8) * (L / mu_wall)^(1/8)) / ...
          (sqrt(g * cos(alpha)) * (chi * d)^(3/4));

% ODEs
dqdx = -omega_o * x; % q(x) = (0.5 * omega_o * (1 - x^2))

% Placeholder expressions (check physics and fix if needed)
q = 0.5 * omega_o * (1 - x^2); % Replace with actual q(x) in dhdx and dzdx
dhdx = ((6 * (72 * kappa - 77) * h * dqdx) + (560 * sqrt(h) * q) ...
       - (64 * h^4)) / (3 * q^2 * (96 * kappa - 77));

dzdx = ((26 * sqrt(h) * q) - (h^4 * (864 * kappa - 385)) ...
       - (693 * kappa * q * h * dqdx)) / (9 * h^4 * (96 * kappa - 77));

ODEs = [dqdx; dhdx; dzdx];
end
