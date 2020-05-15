%this is for the pneumonia case. to compare to original case run the master script separately 
%% modifying the code other than the graphing part 
clear all; 
clf 
%after varying r which is the ventilation perfusion ratio to be less than 1
%we can test various values run the simulation by changing 
%run the other file for various values of r, store the values of r
%store the values of oxygen concentration and blood concentration for each
%case 
%arterialo2 ?? 
global Pstar cstar n maxcount M Q camax RT cI;
%cAbar is alveolar oxygen concentration -- this means that if someone has
%pneumonia then this number should be decreased. Then the parameters we can
%change are the following: PA/RT where RT are just constants. so we can
%change PA ... PA is oxygen alveolar partial pressure. then what we need to
%do is modify the Qbar=Qtotal/n which is expected perfusion per alveolus.
%we can add a randomized vector for eact ventilation perfusion per alveolus
%that simulates some alveoli filled with fluid. 
%first off: we shall start with what happens if 1 alveoli is filled with
%fluid --> the ventilation perfusion ratio decreases as opposed to being Qtotal/n
%since in pneumonia only some alveoli are affected we can make a function
%that has inputs: number of alveoli affected and the extent to which it
%affects those alveoli and the output should be the expected perfusion in
%the ith alveoli (there are n # of alveoli) 
%second: the simulation shall run and we should see some changes in the
%concentration of oxygenated blood. 
%third: we can end up by computing the pulmonary shunt fraction and
%observing the degree of the shunt. 
setup_lung
cvsolve;
outchecklung1
shunt_frac=((cAbar)-cabar)/(cAbar-cI); 
