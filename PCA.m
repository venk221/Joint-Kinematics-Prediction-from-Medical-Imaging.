ptCloud = pcread('D:\WPI\Academics\Biomedical Robotics\Project\work\0deg.ply')
%pcshow(ptCloud)
%ptCloud = pointCloud(x,y,z)

arr = ptCloud.Location
% coeff = pca(arr)
[coeff,score,latent,tsquared] = pca(arr,'NumComponents',2);
%tsquared
%biplot(coeff(:,1:2),'scores',score(:,1:2),'varlabels',{'v_1','v_2','v_3','v_4'});
% scatter3(score(:,1),score(:,2),score(:,3))
% axis equal
% xlabel('1st Principal Component')
% ylabel('2nd Principal Component')
% zlabel('3rd Principal Component')


% direction = 'x';
% pcx = rotatePointCloudAlongZ(ptCloud, direction);
% direction = 'y';
% pcy = rotatePointCloudAlongZ(ptCloud, direction);
%% 
fig1 = figure(1);
set(fig1, 'unit', 'normalized', 'outerposition', [0 0 1 1])
clf 
subplot(1,3,1)
hold on
plot3(ptCloud(:, 1), ptCloud(:, 2), ptCloud(:, 3), 'b.')
V = pca(pc);
quiver3(0,0,0,V(1, 1),V(2, 1),V(3, 1), 'g', 'LineWidth', 4);
quiver3(0,0,0,V(1, 2),V(2, 2),V(3, 2), 'k', 'LineWidth', 4);
quiver3(0,0,0,V(1, 3),V(2, 3),V(3, 3), 'r', 'LineWidth', 4);
axis equal
grid on; grid minor; box on;
xlabel('x'); ylabel('y'); zlabel('z')
view(3)
title('Origin (Arrows are PCA eigenvectors)')
subplot(1,3,2)
plot3(pcx(:, 1), pcx(:, 2), pcx(:, 3), 'r*')
axis equal
grid on; grid minor; box on;
xlabel('x'); ylabel('y'); zlabel('z')
view(3)
title({'PCA highest eigenvalue along z-axis','2nd highest eigenvalue along x-axis'})
subplot(1,3,3)
plot3(pcy(:, 1), pcy(:, 2), pcy(:, 3), 'r*')
axis equal
grid on; grid minor; box on;
xlabel('x'); ylabel('y'); zlabel('z')
view(3)
title({'PCA highest eigenvalue along z-axis','2nd highest eigenvalue along y-axis'})
% saveas(fig1, [filename(1:end-4) '.jpg'])