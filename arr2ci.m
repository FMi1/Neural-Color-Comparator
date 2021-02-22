function [bounds,rel] = arr2ci(data)
    SEM = std(data)/sqrt(length(data));               % Standard Error
    ts = tinv([0.025  0.975],length(data)-1);      % T-Score
    rel = ts*SEM;
    bounds = mean(data) + rel;                      % Confidence Intervalss
end