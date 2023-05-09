% hata model for determine median path loss

clc ;
clear all;
close all;
f=input('enter the value of frequency:');
Hb=input('enter the value of base station height:');
Hm=input('enter the value of mobile station height:');
d=input('enter the distance value in Meter:');
n=input('enter 0 for small city and 1 for large city');

if n==0
    ch=0.8+(1.1*log10(f)-0.7)*Hm-1.56*log10(f);
else
    if f>=150 && f<=200
        ch=8.29*(log10(1.54*Hm))^.2-1.1;
    else
        if f>=201 && f<=1500
            ch=3.2*(log(11.75*Hm))^.2-4.97 ;
        end;
    end;
end;

Lu=69.55+26.26*log10(f)-13.82*log10(Hb)-ch+(44.9-6.55*log10(Hb))*log10(d);
disp(sprintf('%s %d %s','path loss in Urban areas:',Lu,' dB'));

