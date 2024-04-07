function g = g_ANN(x01, x02, x03)
    % Define the weights and biases
    weights = {
    [1.842, -3.016, 0.039; 1.120, -0.045, 0.172; 1.122, -0.169, 0.235],  % Layer 1
    [0.215, -0.936, -0.412; 0.267, -0.536, -0.649; -0.191, 0.578, -0.571],  % Layer 2
    [-0.555, -0.119, 0.948]  % Layer 3
    };
    biases = {
    [-0.392; 1.209; 0.301],  % Layer 1
    [1.804; -1.293; -1.339],  % Layer 2
    [0.065]  % Layer 3
    };

    x = [x01; x02; x03];

    % Calculate the activations for each layer
    z1 = weights{1} * x + biases{1};
    a1 = max(0, z1); % ReLU activation for Layer 1

    z2 = weights{2} * a1 + biases{2};
    a2 = max(0, z2); % ReLU activation for Layer 2

    g = weights{3} * a2; % Output of the network
end


