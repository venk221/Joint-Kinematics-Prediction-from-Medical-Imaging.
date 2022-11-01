%% PLY Script - Tibia

% figure("Name",'Tibia','Color',"white")

% Seg_Data = pcread('Tibia/0deg.ply');
% subplot(2,3,1)
% pcshow(Seg_Data)
% title({'Knee Bent 0°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])


% Seg_Data = pcread('Tibia/23deg.ply');
% subplot(2,3,2)
% pcshow(Seg_Data)
% title({'Knee Bent 23°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])

% Seg_Data = pcread('Tibia/52deg.ply');
% subplot(2,3,3)
% pcshow(Seg_Data)
% title({'Knee Bent 52°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])

% Seg_Data = pcread('Tibia/65deg.ply');
% subplot(2,3,4)
% pcshow(Seg_Data)
% title({'Knee Bent 65°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])

% Seg_Data = pcread('Tibia/84deg.ply');
% subplot(2,3,5)
% pcshow(Seg_Data)
% title({'Knee Bent 84°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])

%% PLY Script - Femur

% figure("Name",'Femur','Color',"white")

% Seg_Data = pcread('Femur/0deg.ply');
% subplot(2,3,1)
% pcshow(Seg_Data)
% title({'Knee Bent 0°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])

% Seg_Data = pcread('Femur/23deg.ply');
% subplot(2,3,2)
% pcshow(Seg_Data)
% title({'Knee Bent 23°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])


% Seg_Data = pcread('Femur/52deg.ply');
% subplot(2,3,3)
% pcshow(Seg_Data)
% title({'Knee Bent 52°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])

% Seg_Data = pcread('Femur/65deg.ply');
% subplot(2,3,4)
% pcshow(Seg_Data)
% title({'Knee Bent 65°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])

% Seg_Data = pcread('Femur/84deg.ply');
% subplot(2,3,5)
% pcshow(Seg_Data)
% title({'Knee Bent 84°'},'Color',[0.8 0.8 0.8]);
% daspect([1 1 1])

%% STL to Point Cloud Script
% Segmentation_Struct.Vertices = Segmentation_Data.Location;
% Segmentation_Struct.Faces = Segmentation_Data.ConnectivityList;
% Segmentation_Struct.FaceColor = 'b';
% Segmentation_Struct.LineWidth = .001;
% Segmentation_Struct.EdgeColor = 'none';
% Segmentation_Struct.FaceLighting = 'gouraud';
% Segmentation_Struct.BackFaceLighting = 'lit';
% patch(Segmentation_Struct)
% view(3)


% figure
% scatter3(Segmentation_Struct.Vertices(:,1),Segmentation_Struct.Vertices(:,2),Segmentation_Struct.Vertices(:,3),'MarkerFaceColor','b','MarkerEdgeColor','k');
% daspect([1 1 1])