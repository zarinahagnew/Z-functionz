function [distance]=smooth_line(data, window_size)
% eg smooth_line(data, 20)
% need to be here: cd /Users/zagnew/GitHub/Z-functionz

%chop data into windows 
% temp is one mean data point for each window
for iwindow=1:length(data)-window_size 
smoothed_data(iwindow)=nanmean(data(iwindow:iwindow+window_size));
end

% calculate mean trial
meantrial=nanmean(data);
moo=ones(1,length(data));
meantrial=meantrial*moo;

% calculate distance
for iframe=1:length(data)-window_size
    distance(iframe)=data(iframe)-smoothed_data(iframe);
end
distance=abs(distance); % reverse polarities

%plot that all to check
subplot(3,1,1)
plot(data)
hold on
plot(meantrial, 'm')
title('raw data and mean')
axis([0 300 -10 30])

subplot(3,1,2)
plot(smoothed_data)
title('smoothed line (moving average)')
axis([0 300 -10 30])

subplot(3,1,3)
plot(distance)
title('distance from mean over 10 frame moving window')





