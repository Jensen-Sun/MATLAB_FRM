clc; clear all; close all
zzz = linspace(0,2*pi,400);
xxx = sin(zzz*10).*zzz;
yyy = cos(zzz*10).*zzz;

figure(1)
hAxis = gca;
line(xxx,yyy,zzz)
hAxis.XRuler.FirstCrossoverValue = 0;
hAxis.YRuler.FirstCrossoverValue = 0;
hAxis.ZRuler.FirstCrossoverValue = 0;

hAxis.XRuler.SecondCrossoverValue = 0;
hAxis.YRuler.SecondCrossoverValue = 0;
hAxis.ZRuler.SecondCrossoverValue = 0;
view([1 1 1])