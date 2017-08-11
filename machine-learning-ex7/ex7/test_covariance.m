function [F1, F2] = test_covariance(M)
% M is n*m matrix:m example, n features
n = size(M,1)
m = size(M,2)

B0 = (1/m)*sum(M,2)
B0_extension = repmat(B0,1,m)

%free degree is n-1
F1 = (1/(m-1))*(M - B0_extension)*(M - B0_extension)'

F2 = (1/(m-1))*(M*M') - B0*B0'

end
