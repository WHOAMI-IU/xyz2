% Indoor propagation log distance path loss model
% PL(d) = PL(d0) + 10*n*log10(d/d0) + X
 
% Define variables
f = 2.4e9; % frequency in Hz
d0 = 1; % reference distance in meters
n = 3; % path loss exponent
X = randn(1); % shadow fading with mean=0, variance=1
 
% Define distance vector
d = 1:0.1:10;
 
% Calculate path loss
PL = 20*log10(4*pi*d0*f/3e8) + 10*n*log10(d./d0) + X;
 
% Plot results
plot(d,PL);
title('Indoor Path Loss Model');
xlabel('Distance (m)');
ylabel('Path Loss (dB)');
