%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: Program 6 - Monitor
Changed:    15 October 2017
Purpose: To use a while loop to monitor for a critical value.
%}
maxTemp=50;
Temp=input('Input a value between 0 and 50');
while Temp<=maxTemp;
    disp('All is Well');
    Temp=input('Input a value between 0 and 50');
end
disp('Shut Down Test');
