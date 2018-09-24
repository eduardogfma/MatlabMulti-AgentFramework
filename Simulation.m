clear all
clear class
clc
%% Initialize
model = Model(5);

%% Simulation
iterations = 100;

for i = 1:iterations
    model.step()
    model.visualization()
end