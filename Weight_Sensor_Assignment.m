% This program is the basis for Week 8, EGR 102 in class assignment to
% build a weight sensor.  This initial program will read your weight sensor
% and tell you what value you are getting.  The while loop will allow it to
% read over and over again. 

%a = arduino('com3','uno') %only needed if arduino not connected
clear
clc
Connect_Arduino()
weight = zeros(1,100); %holds voltage reads
test = 0; %sets initial test number
while 1==1 %continually run
   test =test +1; %defines test number    
   AllValues = 0; % set initial average of this test to 0
     for i=1:10
  weight(test) = readVoltage(a,'A0'); %read from arduino
   
   pause (.5); %slows down read speed
       AllValues=AllValues+weight(i);
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %%%%
   %%%%      Add your code to enter a for loop here  %%%%%%%%%
   %%%%          Create an idex variable to hold     %%%%%%%%%
   %%%%           The current sensor value           %%%%%%%%%
   %%%%           Sum them up in 'AllValues'         %%%%%%%%%
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        plot (weight); %plots values 
   title ('Average Values');
   ylabel('Voltage from sensor'); %label Y axis

   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %%%%    End the loop here - but you are not yet done %%%%%%%%
   %%%%     To get an average you need to divide by     %%%%%%%%
   %%%%     The number of samples - do that too!        %%%%%%%%
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     end

 AveValue=AllValues/10;
   % call your result AveValue and uncomment the line below
fprintf ('test %d = %.4f \n', test, AveValue); %prints values
end %end while loop 