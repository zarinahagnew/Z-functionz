
function goodplot_wide()
% function which produces a nice-looking plot
% and sets up the page for nice printing

% label sizes
set(get(gca,'xlabel'),'FontSize', 14, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 14, 'FontWeight', 'Bold');
set(get(gca,'title'),'FontSize', 12, 'FontWeight', 'Bold');

%axis square;


% page background
set(gcf,'color','w');
box off; 


set(gca,'LineWidth',1);
set(gca,'FontSize',12);
%set(gca,'FontWeight','Bold');

%page size
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize', [20 8]);
set(gcf,'PaperPosition',[0.5 0.5 19 7]);
set(gcf,'PaperPositionMode','Manual');





