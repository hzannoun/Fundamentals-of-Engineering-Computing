%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: Experience with Digital Data
Changed:    6 December 2017
Purpose:
 To be able to successfully modify sound recordings.
%}
clear all;
clc;
a=audiorecorder(8000,8,1);
recordblocking(a,5);%records 5 seconds of audio
b=getaudiodata(a);%collects audio data
len=length(b);
sound(b)%plays the audio
plot(b);
ToPlayWith=b;