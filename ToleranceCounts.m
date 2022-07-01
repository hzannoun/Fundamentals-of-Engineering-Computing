%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: EGR 102-000 Week 2 Example
Changed:    28 September 2017
Purpose:
  To calculate the percentage of maximum and minimum weights from an Excel
  spreadsheet.
%}
data=xlsread('Week6Weights.xlsx');
first_weight=data(1);
tenth_weight=data(10);
numWeights=length(data);
last_weight=data(numWeights);
normal_weight=4.13;
tolerance=0.25;
max_weight=normal_weight+tolerance;
min_weight=normal_weight-tolerance;
underweight=data<min_weight; %Amount of data under the minimumm weight.
overweight=data>max_weight; %Amount of data above the maximum weight.
numUnderweight=sum(underweight); %Sum of the underweight values.
numOverweight=sum(overweight); %Sum of the overweight values.
underWeightPercent=100*(numUnderweight/numWeights); %Percentage of underweight.
overWeightPercent=100*(numOverweight/numWeights); %Percentage of overweight.
fprintf('First weight: %.2f Last weight: %.2f\n',first_weight, last_weight);
fprintf('underweight(<%.2f oz)items:%d,%.2f%%)\n',min_weight,numUnderweight,underWeightPercent)
fprintf('overweight(>%.2f oz)items:%d,%.2f%%\n',max_weight,numOverweight,overWeightPercent)