%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: EGR 102-000 Week 2 Example
Changed:   26 September 2017
Purpose:
To calculate whether the current is safe or not
%}
VS=5;
VL=1.85;
maxCurr=30;
%{VS is voltage source, VL is the voltage dropped by the LED, and maxCurr 
%is the maximum current.
R1=input('enter the resistance')
R2=input('enter the resistance')
R3=input('enter the resistance')
%These are all the resistor values.
if(R1<0)
    disp('NEGATE')
    R1=R1*(-1);
elseif(R2<0)
    disp('NEGATE')
    R2=R2*(-1);
elseif(R3<0)
    disp('NEGATE')
    R3=R3*(-1);
end
Resist=1/((1/R1)+(1/R2)+(1/R3));
%"Resist" is the effective resistance.
current=LEDcurrent(VS,VL,Resist);
currentMilli=current*1000;
%"currentMilli" converts the current into milliamps.
if(currentMilli>30)
    disp('WARNING')
else
    disp('safe current')
end
disp(currentMilli)
    