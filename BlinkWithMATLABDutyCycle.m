%a=arduino('com5','uno')
for i=1:10
    writeDigitalPin(a,'D9',0);%Arduino a will send a low voltage to pin ~9
    pause(0.5);%pause for .5 seconds, as in a delay
    writeDigitalPin(a,'D9',1);
    pause(0.5);
end
writeDigitalPin(a,'D9',0);
brightness_step=1/20;%1/20th of the way to 20
for i=1:20
    disp(i);
    writePWMDutyCycle(a,'D9',i*brightness_step);%command expects a number between 0 and 1
    pause(.5);
end
for i=20:-1:1
    writePWMDutyCycle(a,'D9',i*brightness_step);
    disp(i);
    pause(.5);
end