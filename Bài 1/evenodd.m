function [ye,yo] = evenodd(y)
% even/odd decomposition
% y: analog signal
% ye, yo: even and odd components
% USE [ye,yo] = evenodd(y)
% 
yr = fliplr(y);
ye = 0.5*(y + yr);
yo = 0.5*(y - yr);