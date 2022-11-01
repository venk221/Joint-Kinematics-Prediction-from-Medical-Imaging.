% plot_pca function estimates main axis and its angles based on highest
% Eigenvector values
%
% 'run_pca_plots.m' script will run all the files saved in the folder Femur
% and Tibia for easy plotting
%
% Otherwise inputs are the file location and name, a bone string ('Femur'
% or 'Tibia' in this case) and the angle of the scan - mostly for plot
% titles
% 
% PC means point cloud in the context of this code

function plot_pca(file_name, bone, deg)

ptCloud = pcread(file_name);   % Read point cloud file
pc = ptCloud.Location;         % Point Cloud

pc=bsxfun(@minus,pc,mean(pc)); % Move PC to center region

c = cov([pc(:, 1) pc(:, 2) pc(:, 3)]); % Matrix covariance
[V,D] = eig(c);                        % Eigenvector calculation
D_eig = diag(D);                       % Diagonal Values
[~, i] = sort(D_eig);                  % Sort based on Eigenvector Values
V = V(:, i);                           % i = Max to min axis

%% Aligning Point Cloud to Z-Axis

i =3; % Main axis Eigenvector

% Returns polar coordinates from cartesian points (matrix rotation values)
[theta, rho, ~] = cart2pol(V(1,i),V(2,i),V(3,i));
theta = -theta;  % Offset theta and rho to align PC to Z-axis                          
rho = pi-rho;

% Rotation matrix values
% Rx = [1 0 0; 0 cos(rho) -sin(rho); 0 sin(rho) cos(rho)];
Ry = [cos(rho) 0 sin(rho); 0 1 0; -sin(rho) 0 cos(rho)];
Rz = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];

% Rotates PC based on Rm values
Rm = pc';
Rm = Rz*Rm;
Rm = Ry*Rm;
pc2 = Rm';


%% Aligning Point Cloud to Y-Axis
% Align PC to have same orientation on the x-y plane

c = cov([pc2(:, 1) pc2(:, 2) pc2(:, 3)]);
[V,D] = eig(c);
D_eig = diag(D);
[~, i] = sort(D_eig);
V = V(:, i);

i = 2; % Middle axis Eigenvectors

[theta, ~, ~] = cart2pol(V(1,i),V(2,i),V(3,i));
theta = pi/2-theta;
rho = 0;
% Rx = [1 0 0; 0 cos(rho) -sin(rho); 0 sin(rho) cos(rho)];
Ry = [cos(rho) 0 sin(rho); 0 1 0; -sin(rho) 0 cos(rho)];
Rz = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];

Rm = pc2';
Rm = Rz*Rm;
Rm = Ry*Rm;
pc = Rm';

%% Plotting PC and Axis
%Plots PC
plot3(pc(:, 1), pc(:, 2), -pc(:, 3), 'b.','Color',[0 0 1 0.9])
hold on

% Returns axis on aligned PC in order to plot all three axis in the right 
% coordinate frame
Vm = pca(pc);
% Main Axis Plot ('Z')
quiver3(0,0,0,Vm(1, 1),Vm(2, 1),Vm(3, 1), 'g', 'LineWidth', 4,'AutoScaleFactor',100);
% Secondary Axis Plot ('X' and 'Y')
quiver3(0,0,0,Vm(1, 2),Vm(2, 2),Vm(3, 2), 'k', 'LineWidth', 4,'AutoScaleFactor',40);
quiver3(0,0,0,Vm(1, 3),Vm(2, 3),Vm(3, 3), 'r', 'LineWidth', 4,'AutoScaleFactor',40);

daspect([1 1 1])
axis equal
grid on; grid minor; box on;
xlabel('x'); ylabel('y'); zlabel('z')
view(3)
title(strcat({'PCA '}, bone,{' Main Axis - Leg at '}, num2str(deg) ,'°'))
hold off
end