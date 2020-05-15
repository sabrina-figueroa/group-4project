%filename: lung.m (main program)
%randomized model of oxygen transport inside the lungs 
%this is to run without the pulmonary shunt with pneumonia 
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
setup_lung
cvsolve;
outchecklung1
shunt_frac=((cAbar)-cabar)/(cAbar-cI); %in this case we use sum(cA) because cA is the concentration of 
                                      %oxygen per alveoli (100) in this
                                      %case
%for a normal case shunt fraction should be around 20% 
