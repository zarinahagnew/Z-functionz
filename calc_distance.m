function [distance]=calc_distance(data1, data2)

% calculate distance
for iframe=1:length(data2)
    distance(iframe)=data1(iframe)-data2(iframe);
end
distance=abs(distance); % reverse polarities

