function [copy, eucl_dist, copy_extraction] = master2copy(master, exctract_ranges_num,master_lab,desired_de,noise_intervals)

eucl_dist = zeros(size(master,2), 1);
copy= zeros(size(master));
number_of_samples = size(master, 2);

for i = 1:number_of_samples
    single_master = master(:,i);
    [n_vector,euclidian_distance] = add_noise(single_master,desired_de,master_lab(i,:),noise_intervals);
    copy(:,i) = n_vector;
    eucl_dist(i) = euclidian_distance;
end
copy_extraction = [];
for i = 1:1: size(copy,2)
    copy_extraction = [copy_extraction; feature_extraction(copy(:, i),exctract_ranges_num)];
end
    