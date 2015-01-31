function smoothed_data=smooth_line(data, window_size)
% eg a=smooth_line(trialdata, 10)
% need to be here: cd /Users/zagnew/GitHub/Z-functionz
% takes an array and averages over a window of size 'window_size' for each frame


%chop data into windows 
% temp is one mean data point for each window
for iwindow=1:length(data)-window_size 
smoothed_data(iwindow)=nanmean(data(iwindow:iwindow+window_size));
end

% calculate mean trial
meantrial=nanmean(data);
moo=ones(1,length(data));
meantrial=meantrial*moo;



