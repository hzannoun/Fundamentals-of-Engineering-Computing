%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: Creek 
Changed:    2 October 2017
Purpose:
  Describe the contents of a MATLAB script in a form that students
  can use as basis for the header comments of their script files.
%}
data=xlsread('ElkhornCreekUSGS.xlsx'); %This line reads to the Excel file.
avgLvl=mean(data); %This function calculates the average of the water levels.
maxLvl=max(data); %This function calculates the water level maximum.
minLvl=min(data); %This function calculates the water level minimum.