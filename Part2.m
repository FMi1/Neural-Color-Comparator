[L,C,H] = lab2lch(master_lab);
C_percentage=c_percentage(L,C);
f_inputs = [];
number_of_copies=5;
for i = 1:number_of_copies
    f_inputs = [f_inputs; L,H,C_percentage];
end
f_inputs = [f_inputs, target_output];
fis = readfis('FIS');
out = evalfis(f_inputs, fis);
new_hidden_neurons=30;
[net2,m,r] = NN(nn_input,out,new_hidden_neurons);
save net2;
output_part2=net2(nn_input')';

