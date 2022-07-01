%a = arduino('com3','uno') %only needed if arduino not connected
Connect_Arduino()
analogVoltage = zeros(1,100); %holds voltage reads

for index=1:100 %Take 100 readings from the thermistor  
   analogVoltage(index) = readVoltage(a,'A0'); %read from arduino
   pause (.1); %slows down read speed
   
   plot (analogVoltage); %plots values 
   ylim([-1 6]); %set y limits of plot
   ylabel('Voltage'); %label Y axis  
end %end for loop
xlswrite('ThermisterData.xlsx',analogVoltage);
   

   
%***********************************************************
%   YOUR CODE HERE
%***********************************************************


