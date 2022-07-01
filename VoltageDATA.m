%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: EGR 102-000 Working With Arrays
Changed:   5 October 2017
Purpose:
  To calculate the temperature of the voltage.
%}
clear;
clc;
VoltageINFO=xlsread('ThermistorData.xlsx');%This calls in the thermistor data.
ThermistorR=10000*VoltageINFO./(5-VoltageINFO);%This converts voltage into thermistor resistance.
Kelvin=resistanceToTemp(ThermistorR);%This converts to degrees kelvin.
Fahrenheit=(9/5).*(Kelvin-273.15)+32;%This converts to degrees fahrenheit.
plot(Fahrenheit);
xlim=[71 75];
xlabel=('Voltage');
ylim=[-1 6];
ylabel=('Temperature');
title('Thermistor in Degrees Fahrenheit');