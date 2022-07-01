%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: Your Program - debug 3 programs
Changed:    22 October 2017
Purpose:
  To successfully debug programs.
%}

% The scrit uses the simple interest rate formula A=P(1+rt) to calculate
% the Accrued amount of money (A) that you would have investing some
% principle (P) at a given interest rate per year (r) for a given number of
% years.  We will use this formula to determine compound interest by
% putting it into a loop.

% Set initial values:
P0 = 100; % One hundred dollars is the initial amount invested
rate= 0.03; % 3% annual interest rate
time = input ('how many years do you want to leave it there?  ');
TotalAccrued = P0; % you start with your principle

for i=1:time
    Accrued = P0*(rate);
    TotalAccrued = TotalAccrued + Accrued;
end
disp(TotalAccrued)