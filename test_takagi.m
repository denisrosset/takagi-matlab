% We test the three algorithms for the Takagi decomposition
% size of the matrix
n = 100;
% sample a complex symmetric matrix
X = randn(n,n) + 1i*randn(n,n);
J = X.'+X; % J is symmetric

% The SVD method is the fastest but the least precise
tic;
[U1,D1] = takagi(J, 'svd');
t1 = toc;
% The hybrid method is the fastest and the most precise; it starts with the SVD result and refines it
tic;
[U2,D2] = takagi(J, 'hybrid');
t2 = toc;
% The Jacobi method is the slowest, and slightly less precise than the hybrid method in our tests
tic;
[U3,D3] = takagi(J, 'jacobi');
t3 = toc;
fprintf('Error for the    svd method %6.2E, time %6.2f secs\n', norm(U1.'*D1*U1-J, 'fro'), t1);
fprintf('Error for the hybrid method %6.2E, time %6.2f secs\n', norm(U2.'*D2*U2-J, 'fro'), t2);
fprintf('Error for the jacobi method %6.2E, time %6.2f secs\n', norm(U3.'*D3*U3-J, 'fro'), t3);
