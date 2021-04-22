clear
close all
% syms t r F a
% torque = r * F * sin(a) == t
% torque =
% F*r*sin(a) == t
% solve(torque, a)
% ans = 
% asin(t/(F*a))

% torque radius force angle between f and lever arm
% we are trying to solve for angle obv

x = pid(0.33, 0.2, 0.15);
x.InputUnit = 'Angle';
x.OutputUnit = 'Angle';

y = pid(0.33, 0.2, 0.15);
y.InputUnit = 'Angle';
y.OutputUnit = 'Angle';

% Initial variable setting
mass = 0.6; % kg
accelX = 15; % m/s^2 about average thrust for an F-15

% force in newtons
radius = 0.033; % radius from CoG (meters)
angle = 0.75; % angle / force vector (degrees)

% f = ma
force = mass * accelX;

torque = radius * force * sin(angle);
angle = asin(torque / (force * radius));

disp(torque + " Nm");
disp(angle + " deg");
