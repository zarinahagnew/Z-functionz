%% calculates distance between two lines, takes the absolute value of that
% -------------------------------------------------------------------------
% ZKA 2015

function [distance]=calc_distance(data1, data2)

%function [distance]=calc_distance(data1, data2, absolute)

%if nargin < 3, absolute = 1
    
    % calculate distance
    for iframe=1:length(data2)
        distance(iframe)=data1(iframe)-data2(iframe);
    end
    distance=abs(distance);
%     
%     if absolute == 1
%         distance=abs(distance); % reverse polarities
%     end
%     
end
