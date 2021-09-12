clc
clear all

%Initialize vehicle
V_Mass = 1920;              %Curb weight of the vehicle [kg]
V_area = 3.087;             %Vehicle cross section [m^2]
V_d = 0.35;                 %Drag coefficient [-]
V_RRC=0.02;                 %Rolling friction coefficient [-]
V_Rotating = 4;             %Rotating mass [%]
V_wheel_dia = 0.739;        %Wheel diameter [m]
rho_air = 1.2;              %Air Density [kg/m^3]

%Initialize GEARBOX
gears=6;                                        %Number of gears
gear_ratio = [4.5952 2.5 1.7 1.1 0.852 0.6];    %Gear box
diff_gear_opti = 5;                                  %Final Drive Gear Ratio
gear_up = [10 30 60 90 120];                    %initial up shifts
gear_down = [2 15 30 70 95];                    %initial down shifts

gear_eff=0.95;                                  %Efficiency
gear_idling_loss=300;                           %Idling losses

%Engine Specification
max_CE_power= 150;                              %Engine Power [kW]

% Run Simulation
open('Opti_ICE_1_file');
sim('Opti_ICE_1_file');