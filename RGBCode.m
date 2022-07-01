%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun, Ryan Moore, Noah Boyer
Assignment: RGB color controller
Changed:    7 December 2017
Purpose:
  To successfully build a circuit and write a MATLAB script so that 
allows for the control of the red, green, and blue components of a 
tri-color LED by turning three potentiometer dials.  
%}
clear
clc
a=arduino('com8','uno')
while ~readDigitalPin(a, 'D2') 
    PR = readVoltage(a, 'A0') ;
    PG = readVoltage(a, 'A1') ;
    PB = readVoltage(a, 'A2');
    DCr = 1 - PR/5;
    DCG = 1 - PG/5;
    DCB = 1 - PB/5;
    writePWMDutyCycle(a, 'D11', DCr);
    writePWMDutyCycle(a, 'D10', DCG);
    writePWMDutyCycle(a, 'D9', DCB);
end
fprintf('%.3f,%.3f,%.3f',DCr,DCG,DCB);