close all
clear all

YCrO3 = spinw;
YCrO3.genlattice('lat_const',[5.3191 5.6178 7.6686],'angled',[90 90 90]);
YCrO3.addatom('r',[0.0 0.5 0.0],'S',3/2,'label','MCr3','color','blue');
YCrO3.addatom('r',[0.5 0.0 0.0],'S',3/2,'label','MCr3','color','blue');
YCrO3.addatom('r',[0.5 0.0 0.5],'S',3/2,'label','MCr3','color','blue');
YCrO3.addatom('r',[0.0 0.5 0.5],'S',3/2,'label','MCr3','color','blue');
disp('Magnetic lattice:')
YCrO3.table('matom')

disp('Atomic positions:')
YCrO3.table('atom')
plot(YCrO3)
swplot.zoom(1.5)

YCrO3.gencoupling('maxDistance',7);
disp('Bonds:')
YCrO3.table('bond',[])    

J1 = -2.04;
J2 = -3.01;  
J3 = -3.01;
J4 = -0.009;

YCrO3.addmatrix('label','J1','value',   J1,'color','red')
YCrO3.addmatrix('label','J2','value', J2,'color','green')
YCrO3.addmatrix('label','J3','value',J3,'color','blue')
YCrO3.addmatrix('label','J4','value',J4,'color','cyan')

YCrO3.addcoupling('mat','J1','bond',1)
YCrO3.addcoupling('mat','J2','bond',2,'subIdx',[1 3 5 7])
YCrO3.addcoupling('mat','J3','bond',2,'subIdx',[2 4 6 8])
YCrO3.addcoupling('mat','J4','bond',3)
YCrO3.addcoupling('mat','J4','bond',4)
YCrO3.addcoupling('mat','J4','bond',5)

  plot(YCrO3,'range',[1 1 1],'atomMode','mag')       

%%
S0 = [1 -1 1 -1; 0 0 0 0; 0 0 0 0];
YCrO3.genmagstr('mode','direct','k',[0 0 0],'n',[1 0 0],'S',S0);

disp('Magnetic structure:')
YCrO3.table('mag')
 plot(YCrO3,'range',[1 1 1])

YCrO3.table('mat')
YCrO3.energy

%% Qpoints are S G R G X
Qcorner_SGRGX = {[0.5 0.5 0] [0 0 0] [0.5 0.5 0.5] [0 0 0] [0.5 0 0]  300};
YCrO3_Spec_SGRGX = YCrO3.spinwave(Qcorner_SGRGX, 'hermit',false);
figure
sw_plotspec(YCrO3_Spec_SGRGX,'mode',4,'dE',0.2,'axLim',[0 80])


