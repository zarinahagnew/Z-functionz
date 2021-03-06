%% compares smoothed to filtered data
cerebellar_data_rootdir = '/Users/zagnew/Cereb_data/data/';
cd(cerebellar_data_rootdir)
load DATA.mat % from 
load GROUPDATA

trialdata=group_cond1_pats_to_use_mean(250:1300)
plot(group_cond1_pats_to_use_mean(250:1300))
isnan(group_cond1_pats_to_use_mean(250:1300))

%group_cond1_HCs_to_use_mean
% data is trialdata;
smoothedtrialdata=smooth_line(trialdata, 20);
lowpassdata=lowpass(trialdata, 0.1, 3) ;

% calculate distances
smoothed_diff=calc_distance(trialdata, smoothedtrialdata);
filtered_diff=calc_distance(trialdata, lowpassdata);

clf
%plot that all to check
subplot(221)
plot(trialdata, 'k')
hold on
plot(smoothedtrialdata, 'm')
title('raw data and smoothed data')
axis([0 600 -200 400])

subplot(222)
plot(trialdata, 'k')
hold on
plot(lowpassdata, 'm')
title('low pass filtered data')
axis([0 600 -200 400])

subplot(223)
plot(smoothed_diff)
title('difference btwn raw and smoothed data')
axis([0 600 -10 100])

subplot(224)
plot(filtered_diff)
title('difference btwn raw and low pass filtered data')
axis([0 600 -10 100])
% 
% 
% subplot(3,2,4)
% plot(lowpassdata)
title('low pass filtered data')
% axis([0 600 -10 400])
% 
% subplot(3,2,6)
% plot(filtered_diff)
% title('difference btwn raw and low passfiltered')
% axis([0 600 -10 20])
% 
% figure
% clf
% subplot (211)
% plot(filtered_diff, 'k', 'Linewidth', 1.3)
% hold on
% plot(smoothed_diff, 'm', 'Linewidth', 1.3)
% axis([0 600 -10 30])
% 
% test=NaN(1,8)
% test=[test smoothed_diff]
% 
% subplot(212)
% plot(filtered_diff, 'k', 'Linewidth', 1.3)
% hold on
% plot(test, 'm', 'Linewidth', 1.3)
% axis([0 600 -10 30])


