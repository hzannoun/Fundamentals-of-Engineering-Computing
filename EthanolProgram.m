%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: EGR 102-000 Ethanol Program
Changed:   8 October 2017
Purpose:
  To graph the data for ethanol production.
%}
EthanolData=xlsread('Ethanol from Corn.xlsx');
bushels=EthanolData(:,2);%Takes all values from the second column.
year=EthanolData(:,1);%Takes all values from the first column.
scatter(year,bushels);
title('Yearly Corn Consumption for Ethanol Production');
xlabel('Year');
ylabel('Bushels');

