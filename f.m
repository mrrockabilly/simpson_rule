function [y]=f(x,s)
%
% This function calculates f(x).
%
    y=sqrt(1+exp(-3*cos(s*x)))-1.5;

%
