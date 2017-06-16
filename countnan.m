function countnan = countnan(array)
%calculates number of nans in an array and the proportion of nans. 

numnans=sum(isnan(array))
totallength=length(array);
percent_nans=numnans/totallength*100



