clc
clear all
close all

f=inline('fxo+((fx1-fxo)/(x1-xo))*(x-xo)'...
    ,'x','xo','fxo','x1','fx1')
