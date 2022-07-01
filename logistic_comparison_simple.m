%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: Logistic function plot
Changed:    18 October 2017
Purpose:
A code to graph a logistic growth curve
%}
hold on
for r=.4:.2:2; % growth rate
P0=50; % initial population
K=5000; % carrying capacity
time=0:1/12:10;% create a time array
% create a population array to store calculations
numPoints=length(time);
Population=zeros(1,numPoints);
% calculate poplulations
for step=1:numPoints
 maxPop=P0*exp(r*time(step));
 Population(step)=(K*maxPop)/(K+maxPop+P0);
end
plot(time,Population)% plot the result
title('Population Growth with Different Rates')
xlabel('time(yr)')
ylabel('Population')
end
hold off