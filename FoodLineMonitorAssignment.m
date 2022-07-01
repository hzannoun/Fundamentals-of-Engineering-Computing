%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun, Lexi Kirkland, Tamunoemi Braide
Assignment: EGR 102-000 Week 2 Example
Changed:    12 October 2017
Purpose: To understand the while loops in a way that 
we can put the Arudino commands in and have it work.
%}
%To start we will ask
% the user if the gate needs to be opened. 
clear
clc
Connect_Arduino();
noCan=3.9; 
count=0; % this variable will be used as an ACCUMULATOR to count the cans
s1 = servo(a, 'D9', 'MinPulseDuration', 700*10^-6, 'MaxPulseDuration', 2300*10^-6)

%*******************************************************************
%*******************************************************************
%
%      This command asks if the sensor is blocked (can present)

   canState = readVoltage(a,'A0');
%canState asks if the gate's sensor is blocked or not, in other words is
%there a can? If yes, type 1. If no, type 4.

while 1==1  %to run continuously

    while canState >= noCan %continually run
       % no can in the way, gate stays down
       writePosition(s1,.5);
       pause(1); % wait a second
       canState = readVoltage(a,'A0');
    end %end while loop 

count = count+1;

    while canState < noCan %This means there is a can there.
        writePosition(s1,1);
        %raise the gate
        pause (3); % wait for the can to move out of the way
canState = readVoltage(a,'A0');
%The programs keeps asking this question.
    end
writePosition(s1,.5);
disp(count);%This displays the number of times a can has passed through the gate.
end