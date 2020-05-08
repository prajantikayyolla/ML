clear ; close all; clc
data=csvread('iris.csv');
X=data(:,1:4);
y=data(:,5);
[m, n] = size(X);
X = [ones(m, 1) X];
initial_theta = zeros(n + 1, 1);
lambda=0.1;
options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = ...
	fminunc(@(t)(lrCostFunction(t, X, y, lambda)), initial_theta, options);
[all_theta] = oneVsAll(X, y, 3, lambda);
pred = predictOneVsAll(all_theta, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
disp(all_theta);
disp(predictOneVsAll(all_theta,[1 5.9 3.0 5.1 1.8]))