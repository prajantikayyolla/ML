function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.

Xy=[X y];
X1=Xy(Xy(:,size(Xy)(2))==1,:);
X2=Xy(Xy(:,size(Xy)(2))==0,:);
plot(X1(:,1),X1(:,2),'k+',"markerfacecolor","blue",X2(:,1),X2(:,2),'ko',"markerfacecolor","yellow");








% =========================================================================



hold off;

end
