%increase alveolar partial pressure to reduce oxygen volume 
function P=H(ca)
global Pstar Cstar
ratio=ca/cstar;
F_inflamation=2.5 %force of inflamation vary parameter 
F_fluid=1; %force due to fluid build-up 
P=Pstar*(ratio./(1-ratio)).^(1/3)*(F_inflamation+F_fluid);
end
