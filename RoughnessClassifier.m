%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun, David Penn, William Yates
Assignment: Decision Tree Classifier
Changed:    26 October 2017
Purpose:
  Predict roughness of materials with decision tree.
%}
Connect_Arduino()
%a = arduino('com3','uno') %only needed if arduino not connected
analog = zeros(1,5); %holds voltage reads

   for index = 1:5 %run values 1 to 5
       analog(index) = readVoltage(a,'A0'); %read from arduino
       pause (.2); %slows down read speed
         count=5-index;  % this is to give you a count down on your screen
         disp(count);
   end %end inside loop
        Highest=max(analog);
        lowest=min(analog);
        AveValue=mean(analog); %sets the average from the test
        
        x1=Highest;
        x2=lowest;
        x3=AveValue;
if x3<4.9798
    disp('rough');
elseif x1<4.98289
disp('smooth');
else
    disp('medium');
end 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%        Place your classifier code here   %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                          %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Your values X1 is highest               %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%    X2 is lowest                          %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%    X3 is the average or mean             %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

