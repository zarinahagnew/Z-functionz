function [filtered_data]=lowpass(data, cutoff, N)
% data = the data
% cutoff = the cutoff frequency (between 0 and 1
% form: lowpassdata=lowpass(data, 3, 0.2)
% --------------------------------------------------
% create butterworth filter
% [B,A] = butter(N,Wn)
% N is the order
% Wn is the cutoff frequency (between 0 and 1)
%[B,A] = butter(2, 0.01);
[B,A] = butter(N, cutoff);

% here N corresponds to the :


% the smaller the cutoff the smoother the data. if you put the cutoff at
% 0.999 it basically looks unfiltered

% now apply that filter to your data
filtered_data=filtfilt(B,A, data);
% used to be filt which is rubbish (has time delay)


if sum(isnan(filtered_data))>1
    error('check for nans in your data');
end






%data=group_cond2_HCs_to_use_mean(400:1000)
% notes
%[B,A] = butter(3, 0.1)
% freqz(B,A)
[H,W] = freqz(B,A,N)
