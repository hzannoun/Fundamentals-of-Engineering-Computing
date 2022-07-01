%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Hamzah Zannoun
Assignment: Sequence assembly
Changed:    2 November 2017
Purpose:
  Demonstrate the ability to compare strings using a function, for loops,
  and if-else statements.
%}
function [combined,overlap] = AssembleSeqs(left,right)
fallback=strcat(left,right);
combine=strcat(left,right);
overlap=0;%if there's no match, there are zero overlaps
Shortest=min(length(left),length(right));%equals least number of characters in either input
for i=1:Shortest%this is an array from 1 to Shortest
    leftside=left((end-i+1):end);
    rightside=right(1:i);
    if (strcmpi(leftside,rightside))
        overlap=i;
        combined=strcat(left,right(i+1:end));
    end
end