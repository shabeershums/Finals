function [I_cluster_1]=cluster(I)
% Creating color transformation from sRGB to L*a*b % 
cform = makecform('srgb2lab'); 

lab_I = applycform(I,cform);

ab = double(lab_I(:,:,2:3));

nrows = size(ab,1); 
ncols = size(ab,2);

ab = reshape(ab,nrows*ncols,2); 
% No of clusters to be created with five iterations % 
nColors =5; 
[cluster_idx cluster_center] = kmeans(ab,nColors,'EmptyAction','singleton','distance','sqEuclidean','start',[128,128;128,128;128,128;128,128;128,128]); 

pixel_labels = reshape(cluster_idx,nrows,ncols); 

segmented_images = cell(5);

rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors 
color = I; 
color(rgb_label ~= k) = 0; 
segmented_images{k} = color; 
end

% displaying different show_clusters objects %

I_cluster_1 = segmented_images{1};

I_cluster_2 = segmented_images{2};

I_cluster_3 = segmented_images{3};

I_cluster_4 = segmented_images{4};

I_cluster_5 = segmented_images{5};