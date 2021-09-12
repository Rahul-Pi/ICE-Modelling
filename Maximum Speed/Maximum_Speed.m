% Calculates the maximum speed in km/h
clc
clear all

maxpower=150*1000;          % Max power the engine can generate
cr=0.02;                    % Co-effecient of rolling resistance
cd=0.35;                    % Drag Coeffecient
V_a=3.0870;                 % Vehicle area
m=1920;                     % Mass of the vehicle

syms s;
eqn= maxpower == (2.73*cr*m+0.0126*cd*V_a*s^2).*s;
m_s = double(solve(eqn,s));
maximum_speed = floor(m_s(imag(m_s)==0));

disp(['Max speed of the vehicle is ',num2str(maximum_speed),' km/h'])