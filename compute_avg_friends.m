function [avg_friends] = compute_avg_friends(degrees,A)  avg_friends = randi(1,length(degrees),1);     # M = degrees*A;   M= sum(A^2); # calculating friend of a friend .   for i = 1:length(degrees)    avg_friends(i) = M(i)/degrees(i);  endfor    endfunction