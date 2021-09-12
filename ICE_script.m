clc
clear all
close all

% ICE Map
load ass2CEgas

%Initialize vehicle
V_Mass = 1920;              %Curb weight of the vehicle [kg]
V_area = 3.087;             %Vehicle cross section [m^2]
V_d = 0.35;                 %Drag coefficient [-]
V_RRC=0.02;                 %Rolling friction coefficient [-]
V_Rotating = 4;             %Rotating mass [%]
V_wheel_dia = 0.739;        %Wheel diameter [m]

%Initialize Gear Box
Gears=6;                                                %Number of gears
gear_ratio=[3.6657 2.4933 1.7945 1.3201 0.9386 0.6875]; %Gear ratios
diff_gear=3.89;                                         %Differential gear
gear_up=[9.6305 35.4860 46.8741 82.1634 170.9009];      %Up-shifting speeds
gear_down=[2.1238 16.0393 30.2609 60.0625 97.9696];     %Down-shifting speeds
gear_eff=0.95;                                          %Efficiency
gear_idling_loss=300;                                   %Idling losses

%Engine Specification
max_CE_power= 150;                                      %Engine Power [kW]
V_d	= max_CE_power*2/((5000/60)*(p_me_max(18)/1000));       %Engine Volume

T_CE_max = p_me_max*V_d/(2*pi*2);                           %Max torque

open('ICE_Model')
ICE_sim=sim('ICE_Model');

Eng_plot(max_CE_power, ICE_sim.T_CE, ICE_sim.w_CE)      %Engine operating point plot