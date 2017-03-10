clear all;
close all;

d=75/1000; %focal length
arc=5*pi/180; %arc of the transducer
nbo=32; %number of monopol to simulate the transducer

f=5*10^6; %central frequency of the transducer
T=1/f %time wavelengths

Nt=1024; %numer of time points
t0=0;
t=linspace(-4*T,4*T,Nt);
s=cos(2*pi*f*(t-t0)).*exp(-((t-t0)*1/T).^2);

figure(1)
plot(t,s);