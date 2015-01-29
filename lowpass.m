function [filtered_data]=lowpass(data, cutoff, N)
% data = the data
% cutoff = the cutoff frequency (between 0 and 1
% form: lowpass(data, 0.2)
% --------------------------------------------------
% create butterworth filter
% [B,A] = butter(N,Wn)
% N is the order
% Wn is the cutoff frequency (between 0 and 1)
%[B,A] = butter(2, 0.01);
[B,A] = butter(N, cutoff);

% the smaller the cutoff the smoother the data. if you put the cutoff at
% 0.999 it basically looks unfiltered

% now apply that filter to your data
filtered_data=filter(B,A, data);

figure 
subplot(211)
plot(data, 'k','LineWidth',1.3);
%axis([0 300 -5 30])

subplot(212)
plot(filtered_data, 'm','LineWidth',1.3);
%axis([0 300 -5 30])

if sum(isnan(test))>1
    error('ERRRRRORRRRR');
end






%data=group_cond2_HCs_to_use_mean(400:1000)