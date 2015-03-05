function []= nicebar(data, SEM, moo) 
% plots a nice bar graph with error bars
% ZKA March 2015
% -------------------------------------------------------------------------
% needs data in this format:
% data_z=[1 2 ; 3 4]
% SEM_z=[0.1 0.2; 0.3 0.4]
% eg "nicebar(data_z, SEM_z, title_z)"

figure
h = barwitherr(SEM, data);% Plot with errorbars
set(gca,'XTickLabel',{'clear','noise'})
ylabel('mean stdev of pitch')
set(h(1),'FaceColor','k');
set(h(2),'FaceColor','w');
goodplot
title(moo)
% axis([0 3 ymin ymax])

