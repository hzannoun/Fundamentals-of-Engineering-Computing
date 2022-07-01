%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Team 0: Matt Labb, Ada Lovelace, J. Random Hacker
Assignment: EGR 102-000 Week 2 Example
Changed:    1 August 2016
History:     1 August 2016 - Add history of changes.
            25 July   2016 - Initial version.
Purpose:
  Describe the contents of a MATLAB script in a form that students
  can use as basis for the header comments of their script files.

Notes:
  Every MATLAB file submitted in EGR 102 should start with a header
  comment following this outline.  The "History" and "Notes" sections
  are optional, unless otherwise specified.
%}
%Define value of each 'R' variable
R1=input('enter the resistance:')
R2=input('enter the resistance:')
R3=input('enter the resistance:')
%Find the effective resistance by using formula
eff_resistance=1/((1/R1) + (1/R2) + (1/R3))
