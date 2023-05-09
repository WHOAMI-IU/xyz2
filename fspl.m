clc;
close all;
clear all ;
f=input('enter the value of frequency in Mhz:');
L=300/f;
disp('this is the value of wavelength:');
L
d=input('enter the value of distance in km:');
Gt=input('enter the value of transmitting antenna gain in db:');
Gr=input('enter the value of receiving antenna gain in db:');
Pt=input('enter the value of transmitted power in db:');
ls = 32.44+20*log10(d)+20*log10(f);
Pr=Pt+Gt+Gr-ls;
pr=10^(Pr/10);   %calculating received power in watts

disp(sprintf('%s%d$s','the recived power is:',pr,'watts'));


