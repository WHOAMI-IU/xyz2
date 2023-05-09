
% formula of median path loss,L=Lfsl+Amu-Hmg-Hbg-Kc


clc;
clear all;
close all;

Lfsl=input('Enter the value of free space loss:');

Amu=input('Enter the value of Median attenuation:');

Hmg=input('Enter the value of mobile station height gain factor:');

Hbg=input('Enter the value of base station height gain factor:');

Kc=input('Enter the value of correction factor gain:');

L=Lfsl+Amu-Hmg-Hbg-Kc ;

disp(sprintf('%s %d %s','Median path loss:',L,' db'));

