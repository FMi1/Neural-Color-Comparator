function [net,mse,reg] = NN(nn_input, target,hidden_neurons)

x = nn_input';
t = target';
trainFcn = 'trainlm';
hiddenLayerSize = hidden_neurons;
% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
%
% Create a Fitting Network
%hiddenLayerSize = 10;
net = fitnet(hiddenLayerSize,trainFcn);
%net.trainParam.max_fail = 10;
% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

net.trainParam.showWindow=0;
% Train the Network
[net,tr] = train(net,x,t);

% Test the Network
trIndex = tr.trainInd;
y = net(x(:,trIndex));
%e = gsubtract(t,y);
%performance = perform(net,t,y);
% View the Network
%view(net)
mse = immse(y,t(trIndex));
reg = regression(t(trIndex),y);
end