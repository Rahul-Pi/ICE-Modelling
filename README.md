# ICE-Modelling

An ICE based Sports Utility Vehicle is modelled here so as to understand and compare the change in the fuel consumption when converted to hybrid.

The Series Hybrid configuration of the same can be found in the [Series Hybrid Controller](https://github.com/Rahul-Pi/Series-Hybrid-controller) repository.

The Parellel Hybrid configuration of the same can be found in the [Series Hybrid Controller](https://github.com/Rahul-Pi/Parallel-Hybrid-Controller) repository.

The simulation is based on QSS Toolbox developed by ETH Zurich.

The QSS model:
<p align="center">
<img src="https://rahulrpai.files.wordpress.com/2021/09/ice-configuration.jpg">
  </p>

# Instructions for running the program

Run the ICE_Script.m file. The simulation will open and also the engine plot will be done automatically
(This uses the Eng_Plot script in the folder and the plots can be found under the figure folder within the same main folder).

The optimal Gears are calculated using the files in Optimal Gears folder. To do this run the Gear_optimisation_main_file.m file.
!!! Caution: This optimisation can take around 25 minutes. !!!
The results of this is saved in the opti_gear_box.mat file

To find the maximum speed of the vehicle run the Maximum_speed.m file under the maximum speed folder.
