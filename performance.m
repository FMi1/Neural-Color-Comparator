% Da avviare una volta che nn_inputs e target_output sono nello workspace
number_of_rep=50
ci_mse=[];
ci_reg=[]
for hidden_neuron=16:4:38
    mse=[];
    reg=[];
    for repetitions=1:1:number_of_rep
        [net,m,r]=NN(nn_input,out,hidden_neuron);
        mse=[mse,m];
        reg=[reg,r];
    end
    ci_mse=[ci_mse;arr2ci(mse)];
    ci_reg=[ci_reg;arr2ci(reg)];
end