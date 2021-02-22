clear all
load("IS_dataset.mat");
addpath(genpath('optprop'));
rng('shuffle');
master = spectra;
extraction_intervals = 12;
number_of_features_extracted=7;
master_rgb = roo2rgb(100*master', 'srgb', (380:1:800));
master_lab = roo2lab(100*master', 'D65/10', (380:1:800));
master_features=[];
for i = 1:1:size(master,2)   
    master_features = [master_features; feature_extraction(master(:,i),extraction_intervals)];
end
noise_intervals = 5;
de_ranges = 5; 
copy_rgb = [];
data_set=[];
target_output=[];
completed_copy=[];
for index=1:1:de_ranges
    disp("Generazione Copia")
    [copy, de, ext] = master2copy(master,extraction_intervals,master_lab,index,noise_intervals);
    completed_copy=[completed_copy,copy];
    copy_rgb=[copy_rgb;roo2rgb(100*copy', 'srgb', (380:1:800))];
    data_set_istance=[master_features,ext];
    data_set=[data_set;data_set_istance];
    target_output=[target_output;de];
end
input_normalized = normalize(data_set);
number_of_features=10;
opt = statset('display', 'iter');
[features, history] = sequentialfs(@functionFitting, input_normalized, target_output, 'cv', 'none', 'opt', opt,'nfeatures', number_of_features);
hidden_neurons=14; %ottenuto dalla fase di performance evaluation
nn_input = input_normalized(:, features);
[net,m,r] = NN(nn_input,target_output,hidden_neurons);
save net;
output_part1=net(nn_input');
