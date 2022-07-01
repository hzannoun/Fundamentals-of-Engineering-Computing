%{
PlaySong - Play song using arduino speaker
Authors:    Hamzah Zannoun, David Penn, William Yates
Assignment: EGR 102 Play Song
Changed:    1 November 2017
Purpose:
    Plays a song using the digital pin out zero on the arduino. Use an
    array to store song data which is iterated over to play the song.
%}

%%% Arduino configuration: change these lines as necessary

Connect_Arduino();
% Our frequencies:
C = 261;
D = 294;
E = 329;
F = 349;
G = 391;
GS = 415;
A = 440;
AS = 455;
B = 466;
CH = 523;
CSH = 554;
DH = 587;
DSH = 622;
EH = 659;
FH = 698;
FSH = 740;
GH = 784;
GSH = 830;
AH = 880;
Rest = 0;

% The song to play.  Column 1 is the note, column 2 the duration. 
Song = [ A, 0.5; ... % Durations in milliseconds, converted to seconds
         A, 0.5; ...
         A, 0.5; ...
         F, 0.35; ...
         CH, 0.150; ...
         A, 0.5; ...
         F, 0.350; ...
         CH, 0.150; ...
         A, 0.650; ...
       ];

while true
    if readDigitalPin(a, 'D2')
        for idx = 1 : length(Song) % number of rows
            playTone(a, 'D9', Song(idx, 1), Song(idx, 2));
            % Wait until the note is over before starting the next one.
            pause(Song(idx, 2));
        end
    end
end
