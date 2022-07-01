%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun, Ryan Moore, Noah Boyer
Assignment: MiniProject - Build the circuit
Changed:    9 November 2017
Purpose:
  To successfully calibrate a graph that will output temperature in degrees
  fahrenheit connected to an Arduino.
%}
clear
clc
a = arduino('com9','uno')
p1 = 39.65
p2 = -21.31
while 1==1
    x = readVoltage(a,'A0')
    TempOutput = p1*x + p2
    disp(TempOutput)
    pause(1)
end