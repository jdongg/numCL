clear all; close all; clc;

N  = [20 40 80 160 320 640];

L1_smooth = [0.0035339
             0.00091821
             0.00020589
             4.1582e-05
             8.5309e-06
             1.5973e-06];
    
L1_shock = [0.03312
            0.015334
            0.0075207
            0.0037048
            0.001834
            0.00091577];
        
L1_shock2 = [0.0029448
             0.00021606
             1.7424e-05
             1.8651e-06
             1.9902e-07
             2.515e-08];

figure
loglog(N,L1_smooth,'s-','linewidth',2,'markersize',10);
hold on;
loglog(N,L1_shock,'o-','linewidth',2,'markersize',10);
loglog(N,L1_shock2,'x-','linewidth',2,'markersize',10,'color',[0.8500    0.3250    0.0980]);
grid on;

N3a = [40 80 160];
L1_exacta = [5e-6 (5e-6)/8 (5e-6)/64];
loglog(N3a, L1_exacta,'s--','color',[0    0.4470    0.7410],'linewidth',2,'markersize',10);

N3b = [160 320 640];
L1_exactb = [7e-4 (7e-4)/2 (7e-4)/4];
loglog(N3b, L1_exactb,'o--','color',[0.8500    0.3250    0.0980],'linewidth',2,'markersize',10);

loglog([40 160], [(5e-6)/64 (5e-6)/64], 's--','color',[0    0.4470    0.7410],'linewidth',2,'markersize',10);
loglog([40 40], [5e-6 (5e-6)/64], 's--','color',[0    0.4470    0.7410],'linewidth',2,'markersize',10);

loglog([160 640], [(7e-4)/4 (7e-4)/4], 'o--','color',[0.8500    0.3250    0.0980],'linewidth',2,'markersize',10);
loglog([160 160], [7e-4 (7e-4)/4], 'o--','color',[0.8500    0.3250    0.09800],'linewidth',2,'markersize',10);



xlabel('$$N$$','interpreter','latex','fontsize',16);
ylabel('$$\ell^{1}$$ Error','interpreter','latex','fontsize',16);
title('Convergence of FV3 with MUSCL Limiter','interpreter','latex','fontsize',16);
set(gca,'ticklabelinterpreter','latex','fontsize',16);
lgd = legend('Pre-shock','Post-shock','`` away from $$x=\pi$$ ','$$\mathcal{O}(\Delta x^{3})$$','$$\mathcal{O}(\Delta x)$$','location','northeastoutside');
set(lgd,'interpreter','latex','fontsize',16);