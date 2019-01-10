%% Create Clusters

%Frontal Clusters

n=1;
electrodes = [1,2,3,4,11,12,13,14];
Frontal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Frontal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
electrodes = [1,2,3,4,11,12,13,14];
Frontal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Frontal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
electrodes = [1,2,3,4,11,12,13,14];
Frontal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Frontal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


% Mid Frontal Clusters

n=1;
electrodes = [3,12];
MidFrontal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            MidFrontal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
MidFrontal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            MidFrontal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

MidFrontal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            MidFrontal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


% Posterior Clusters

n=1;
electrodes = [6,7,8,9];
Posterior_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Posterior_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
Posterior_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Posterior_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

Posterior_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Posterior_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end



% Temporal Clusters

n=1;
electrodes = [5,10];
Temporal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Temporal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
Temporal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Temporal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

Temporal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Temporal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end



% LeftFrontal Clusters

n=1;
electrodes = [1,2,3,4];
LeftFrontal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftFrontal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
LeftFrontal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftFrontal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

LeftFrontal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftFrontal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end




% RightFrontal Clusters

n=1;
electrodes = [11,12,13,14];
RightFrontal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightFrontal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
RightFrontal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightFrontal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

RightFrontal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightFrontal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end



% LeftTemporal Clusters

n=1;
electrodes = [5];
LeftTemporal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftTemporal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
LeftTemporal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftTemporal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

LeftTemporal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftTemporal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

% RightTemporal Clusters

n=1;
electrodes = [10];
RightTemporal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightTemporal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
RightTemporal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightTemporal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

RightTemporal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightTemporal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


% RightPosterior Clusters

n=1;
electrodes = [8,9];
RightPosterior_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightPosterior_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
RightPosterior_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightPosterior_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

RightPosterior_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightPosterior_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end



% LeftPosterior Clusters

n=1;
electrodes = [6,7];
LeftPosterior_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftPosterior_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
LeftPosterior_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftPosterior_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

LeftPosterior_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftPosterior_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


% Occipital Clusters

n=1;
electrodes = [8];
Occipital_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Occipital_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
Occipital_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Occipital_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

Occipital_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            Occipital_bnf (j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


% RightParietal Clusters

n=1;
electrodes = [9];
RightParietal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightParietal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
RightParietal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightParietal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

RightParietal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            RightParietal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


% LeftParietal Clusters

n=1;
electrodes = [6];
LeftParietal_experts = zeros(size(experts_ERD,3),size(experts_ERD,1)*length(electrodes),size(experts_ERD,4));
for i=1:size(experts_ERD,4)
    eegdata = nanmean(experts_ERD(:,electrodes,:,i),4); 
        for j=1:size(experts_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftParietal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;
LeftParietal_bf = zeros(size(bf_ERD,3),size(bf_ERD,1)*length(electrodes),size(bf_ERD,4));
for i=1:size(bf_ERD,4)
    eegdata = nanmean(bf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftParietal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end

n=1;

LeftParietal_bnf = zeros(size(bnf_ERD,3),size(bnf_ERD,1)*length(electrodes),size(bnf_ERD,4));
for i=1:size(bnf_ERD,4)
    eegdata = nanmean(bnf_ERD(:,electrodes,:,i),4); 
        for j=1:size(bnf_ERD,3)
            eegdata_band = eegdata(:,:,j);
            LeftParietal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end
