%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun, Ryan Moore, Noah Boyer
Assignment: MiniProject - Modify your code
Changed:    16 November 2017
Purpose:
  To create a code that moves the servo motor according to temperature.
%}
clear
clc
a = arduino('com7','uno')
p1 = 39.65
p2 = -21.31
s1 = servo(a, 'D9', 'MinPulseDuration', 700*10^-6, 'MaxPulseDuration', 2300*10^-6);
while 1==1
    x = readVoltage(a,'A0')
    TempOutput = p1*x + p2
    disp(TempOutput)
    pause(1)
    if TempOutput < 40
        TempOutput = 40
    elseif TempOutput > 80
        TempOutput = 80
    end
    angle = (TempOutput/40) - 1
    writePosition(s1,angle)
end
