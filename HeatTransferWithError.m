%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: Your Program - debug 3 programs
Changed:    22 October 2017
Purpose:
 To successfully debug programs.
%}

% This program calculates the heat transer rate per unit area of a furnace
% wall.  The basic heat transfer equation for conduction is given by
% q=kA(T2-T1)/d where q is the heat transfer rate, k is the thermal
% conductivity - a material property, A is the surface area of the items in
% contact and d is the thickness (depth).  In this case we want heat
% transfer rate per unit area so q/A = k(T2-T1)/d.  If you do this
% calculation on your own, the units need to line up.  Make sure the units
% in k go with the units for temperature and length that you use for A, d
% and T.

% Initialize variables
ThermalConductivity=0.3; % fire clay for a furnace wall in Watts/(meter*Kelvin)
TempInside=650; % This is in C, which I can get away with because delta C = delta K
TempOutside=150; % also in C
Thickness = 0.1524; % 6 inches in meters

HeatTransferPerArea=(ThermalConductivity * (TempInside-TempOutside))/Thickness;

fprintf('Heat transfer per area is %.2f Watts/square meter',HeatTransferPerArea);