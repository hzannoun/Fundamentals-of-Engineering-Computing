function current=LEDcurrent(VS,VL,Resist)
%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: EGR 102-000 Week 3
Changed:    13 September 2017
History:    13 September 2017 - Add history of changes.
            13 September 2017 - Initial version.
Purpose:
  Calculate the current of an LED.

Notes:
  Every MATLAB file submitted in EGR 102 should start with a header
  comment following this outline.  The "History" and "Notes" sections
  are optional, unless otherwise specified.
%}
%Function calculates current. Inputs are voltage source, voltage dropped by LED, and resistance.
VRE=VS-VL;
current=VRE/Resist;
end

