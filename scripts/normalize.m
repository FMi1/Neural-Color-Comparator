function normalized_array = normalize(input)
    normalized_array = [];
    for i = 1:size(input, 1)
        normalized_array = [normalized_array; zscore(input(i, :))];
    end