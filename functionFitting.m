function performance = functionFitting(data_set, de)
    x = data_set';
    t = de';
    trainFcn = 'trainlm';  % Levenberg-Marquardt backpropagation.

    % Create a Fitting Network
    hiddenLayerSize = 8;
    net = fitnet(hiddenLayerSize,trainFcn);
    net.trainParam.showWindow=0;
    % Setup Division of Data for Training, Validation, Testing
    net.divideParam.trainRatio = 70/100;
    net.divideParam.valRatio = 15/100;
    net.divideParam.testRatio = 15/100;
    % Train the Network
    [net,tr] = train(net,x,t);

    % Test the Network
    y = net(x);
    performance = perform(net,t,y);

end

