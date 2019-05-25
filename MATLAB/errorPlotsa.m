clear all; close all; clc;

N  = [20 40 80 160 320 640];

L1_smooth = [0.011458
             0.0019928
             0.00030368
             4.4813e-05
             5.4964e-06
             6.9767e-07];
    
L1_shock = [0.0082417
            0.0071298
            0.0042857
            0.0021867
            0.0011005
            0.00055142];

figure
loglog(N,L1_smooth,'s-','linewidth',2,'markersize',10);
hold on;
loglog(N,L1_shock,'o-','linewidth',2,'markersize',10);
grid on;

N3a = [80 160 320];
L1_exacta = [5e-5 (5e-5)/8 (5e-5)/64];
loglog(N3a, L1_exacta,'s--','color',[0    0.4470    0.7410],'linewidth',2,'markersize',10);

N3b = [160 320 640];
L1_exactb = [7e-4 (7e-4)/2 (7e-4)/4];
loglog(N3b, L1_exactb,'o--','color',[0.8500    0.3250    0.0980],'linewidth',2,'markersize',10);

loglog([80 320], [(5e-5)/64 (5e-5)/64], 's--','color',[0    0.4470    0.7410],'linewidth',2,'markersize',10);
loglog([80 80], [5e-5 (5e-5)/64], 's--','color',[0    0.4470    0.7410],'linewidth',2,'markersize',10);

loglog([160 640], [(7e-4)/4 (7e-4)/4], 'o--','color',[0.8500    0.3250    0.0980],'linewidth',2,'markersize',10);
loglog([160 160], [7e-4 (7e-4)/4], 'o--','color',[0.8500    0.3250    0.09800],'linewidth',2,'markersize',10);

xlabel('$$N$$','interpreter','latex','fontsize',16);
ylabel('$$\ell^{1}$$ Error','interpreter','latex','fontsize',16);
title('Convergence of the Third Order FV Scheme','interpreter','latex','fontsize',16);
set(gca,'ticklabelinterpreter','latex','fontsize',16);
lgd = legend('Pre-shock','Post-shock','$$\mathcal{O}(\Delta x^{3})$$','$$\mathcal{O}(\Delta x)$$','location','northeastoutside');
set(lgd,'interpreter','latex','fontsize',16);