clear all;
close all;
%Load previous job
remove_outliers_pro2

%% PCA on FWI


fwi_n=zscore(FWI);
[ prj_fwi, P_fwi, S_fwi ] = pca_function( fwi_n );

    %  Variance explained by principle components 
rho_fwi = diag(S_fwi).^2./sum(diag(S_fwi).^2);
mfig('Variance explained by principal components(FWI)');
plot(rho_fwi, 'o-');
title('Variance explained by principal components');
xlabel('Principal component');
ylabel('Variance explained value');
grid


 
    %%Scatter plots PCA
mfig('Scatter plots of 6 first PCs (FWI)');
pca_s=6;
for m=1:pca_s
for k=m+1:pca_s  
    
    subplot(pca_s,pca_s,pca_s*(k-1)+m);
plot(prj_fwi(:,m),prj_fwi(:,k),'r.','MarkerSize',12);
title(['PC',int2str(m),'Vs PC',int2str(k)]);
xlabel(['PC',int2str(m)]);
ylabel(['PC',int2str(k)]);
grid
end
end

% Weights
mfig('6 first Eigen vectors (FWI)');
for i=1:pca_s
    plot((1:length(attributeNames_fwi))',P_fwi(:,i));
   
    set(gca,'XLim',[0 7],'XTick',1:length(attributeNames_fwi),'XTickLabel',attributeNames_fwi)
   hold on;
end

hold off;
legend ('Eigen Vector 1','Eigen Vector 2','Eigen Vector 3','Eigen Vector 4',...
    'Eigen Vector 5','Eigen Vector 6');


%% PCA on FWI


fwi_n=zscore(FWI);
[ prj_fwi, P_fwi, S_fwi ] = pca_function( fwi_n );

    %  Variance explained by principle components 
rho_fwi = diag(S_fwi).^2./sum(diag(S_fwi).^2);
mfig('Variance explained by principal components(FWI)');
plot(rho_fwi, 'o-');
title('Variance explained by principal components');
xlabel('Principal component');
ylabel('Variance explained value');
grid


 
    %%Scatter plots PCA
mfig('Scatter plots of 6 first PCs (FWI)');
pca_s=6;
for m=1:pca_s
for k=m+1:pca_s  
    
    subplot(pca_s,pca_s,pca_s*(k-1)+m);
plot(prj_fwi(:,m),prj_fwi(:,k),'r.','MarkerSize',12);
title(['PC',int2str(m),'Vs PC',int2str(k)]);
xlabel(['PC',int2str(m)]);
ylabel(['PC',int2str(k)]);
grid
end
end

% Weights
mfig('6 first Eigen vectors (FWI)');
for i=1:pca_s
    plot((1:length(attributeNames_fwi))',P_fwi(:,i));
   
    set(gca,'XLim',[0 7],'XTick',1:length(attributeNames_fwi),'XTickLabel',attributeNames_fwi)
   hold on;
end

hold off;
legend ('Eigen Vector 1','Eigen Vector 2','Eigen Vector 3','Eigen Vector 4',...
    'Eigen Vector 5','Eigen Vector 6');

%% PCA on full dataset


mdata_n=zscore(M_data);
[ prj_full, P_full, S_full ] = pca_function( mdata_n );

    %  Variance explained by principle components 
rho_full = diag(S_full).^2./sum(diag(S_full).^2);
mfig('Variance explained by principal components(Full dataset)');
plot(rho_full, 'o-');
title('Variance explained by principal components');
xlabel('Principal component');
ylabel('Variance explained value');
grid



    %%Scatter plots PCA
mfig('Scatter plots of 6 first PCs (Full dataset)');
pca_s=6;
for m=1:pca_s
for k=m+1:pca_s  
    
    subplot(pca_s,pca_s,pca_s*(k-1)+m);
plot(prj_full(:,m),prj_full(:,k),'r.','MarkerSize',12);
title(['PC',int2str(m),'Vs PC',int2str(k)]);
xlabel(['PC',int2str(m)]);
ylabel(['PC',int2str(k)]);
grid
end
end

% Weights
mfig('6 first Eigen vectors (Full datset)');
for i=1:pca_s
    plot((1:(length(attributeNames)+Col))',P_full(:,i));
   
    set(gca,'XLim',[0 14],'XTick',1:length(attributeNames),'XTickLabel',attributeNames)
   hold on;
end

hold off;
legend ('Eigen Vector 1','Eigen Vector 2','Eigen Vector 3','Eigen Vector 4',...
    'Eigen Vector 5','Eigen Vector 6');