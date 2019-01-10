

%%
load eegdata_bf_freqs.mat
load eegdata_bnf_freqs.mat
load eegdata_experts_freqs.mat

theta=1;
alpha=2;
beta=3;
gamma=4;
for i=1:length(eegdata_experts_freqs)
   for z=1:size(eegdata_experts_freqs{i}{1},1)
       if i~=3 || i ~=7
           j=6;
       else
          if i==3
              j=8;
          else
              j=7;
          end
       end
       t=1;
       for n=j:24
        experts(i,z,theta,t) =  100*(nanmean(eegdata_experts_freqs{i}{1}(z,3:8) - nanmean(eegdata_experts_freqs{i}{n}(z,3:8))))/nanmean(eegdata_experts_freqs{i}{n}(z,3:8));
        experts(i,z,alpha,t) =  100*(nanmean(eegdata_experts_freqs{i}{1}(z,8:14) - nanmean(eegdata_experts_freqs{i}{n}(z,8:14))))/nanmean(eegdata_experts_freqs{i}{n}(z,8:14));
        experts(i,z,beta,t) =  100*(nanmean(eegdata_experts_freqs{i}{1}(z,14:30) - nanmean(eegdata_experts_freqs{i}{n}(z,14:30))))/nanmean(eegdata_experts_freqs{i}{n}(z,14:30));
        experts(i,z,gamma,t) =  100*(nanmean(eegdata_experts_freqs{i}{1}(z,30:end) - nanmean(eegdata_experts_freqs{i}{n}(z,30:end))))/nanmean(eegdata_experts_freqs{i}{n}(z,30:end));
        t=t+1;
       end
   end
end


for i=1:length(eegdata_bf_freqs)
   for z=1:size(eegdata_bf_freqs{i}{1},1)
       if i~=2 
           j=6;
       else
          if i==2
              j=7;
          end
       end
       t=1;
       for n=j:26
        bf(i,z,theta,t) =  100*(nanmean(eegdata_bf_freqs{i}{1}(z,3:8) - nanmean(eegdata_bf_freqs{i}{n}(z,3:8))))/nanmean(eegdata_bf_freqs{i}{n}(z,3:8));
        bf(i,z,alpha,t) =  100*(nanmean(eegdata_bf_freqs{i}{1}(z,8:14) - nanmean(eegdata_bf_freqs{i}{n}(z,8:14))))/nanmean(eegdata_bf_freqs{i}{n}(z,8:14));
        bf(i,z,beta,t) =  100*(nanmean(eegdata_bf_freqs{i}{1}(z,14:30) - nanmean(eegdata_bf_freqs{i}{n}(z,14:30))))/nanmean(eegdata_bf_freqs{i}{n}(z,14:30));
        bf(i,z,gamma,t) =  100*(nanmean(eegdata_bf_freqs{i}{1}(z,30:end) - nanmean(eegdata_bf_freqs{i}{n}(z,30:end))))/nanmean(eegdata_bf_freqs{i}{n}(z,30:end));
        t=t+1;
       end
   end
end


for i=1:length(eegdata_bnf_freqs)
   for z=1:size(eegdata_bnf_freqs{i}{1},1)
       if i~=2 || i~=6
           n=6;
       else
           n=5;
       end
       t=1;
       for n=j:25
        bnf(i,z,theta,t) =  100*(nanmean(eegdata_bnf_freqs{i}{1}(z,3:8) - nanmean(eegdata_bnf_freqs{i}{n}(z,3:8))))/nanmean(eegdata_bnf_freqs{i}{n}(z,3:8));
        bnf(i,z,alpha,t) =  100*(nanmean(eegdata_bnf_freqs{i}{1}(z,8:14) - nanmean(eegdata_bnf_freqs{i}{n}(z,8:14))))/nanmean(eegdata_bnf_freqs{i}{n}(z,8:14));
        bnf(i,z,beta,t) =  100*(nanmean(eegdata_bnf_freqs{i}{1}(z,14:30) - nanmean(eegdata_bnf_freqs{i}{n}(z,14:30))))/nanmean(eegdata_bnf_freqs{i}{n}(z,14:30));
        bnf(i,z,gamma,t) =  100*(nanmean(eegdata_bnf_freqs{i}{1}(z,30:end) - nanmean(eegdata_bnf_freqs{i}{n}(z,30:end))))/nanmean(eegdata_bnf_freqs{i}{n}(z,30:end));
        t=t+1;
       end
   end
end


save('bf','bf')
save('bnf','bnf')
save('experts','experts')


%% Create Clusters

%Frontal Clusters

n=1;
Frontal_experts = zeros(4,7*8,6);
for i=1:size(experts,4)
        eegdata = nanmean(experts(:,[1,2,3,4,11,12,13,14], :,i),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            Frontal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


n=1;
Frontal_bnf = zeros(4,9*8,6);
for i=1:size(bnf,4)
    eegdata = nanmean(bnf(:,[1,2,3,4,11,12,13,14], :,i),4); 
    for j=1:4
        eegdata_band = eegdata(:,:,j);
        Frontal_bnf(j,:,n) = eegdata_band(:);
    end
    n=n+1;
end



n=1;
Frontal_bf = zeros(4,9*8,6);
for i=1:size(bf,4)
        eegdata = nanmean(bf(:,[1,2,3,4,11,12,13,14], :,i),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            Frontal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end



% MidFrontal Clusters

n=1;
MidFrontal_experts = zeros(4,7*2,6);
for i=1:size(experts,4)
        eegdata = nanmean(experts(:,[3,12], :,i),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            MidFrontal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


n=1;
MidFrontal_bnf = zeros(4,9*2,6);
for i=1:size(bnf,4)
        eegdata = nanmean(bnf(:,[3,12], :,i),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            MidFrontal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end



n=1;
MidFrontal_bf = zeros(4,9*2,6);
for i=1:3:size(bf,4)
        eegdata = nanmean(bf(:,[3,12], :,i),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            MidFrontal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
end


%Posterior Clusters
post = [6,7,8,9];
n=1;
Posterior_experts = zeros(4,7*4,6);
for i=1:3:size(experts,4)
    if (i+2)<size(experts,4)
        eegdata = nanmean(experts(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            Posterior_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


n=1;
Posterior_bnf = zeros(4,9*4,6);
for i=1:3:size(bnf,4)
    if (i+2)<size(bnf,4)
        eegdata = nanmean(bnf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            Posterior_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



n=1;
Posterior_bf = zeros(4,9*4,6);
for i=1:3:size(bf,4)
    if (i+2)<size(bf,4)
        eegdata = nanmean(bf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            Posterior_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


%Temporal Clusters

post = [5,10];
n=1;
Temporal_experts = zeros(4,7*2,6);
for i=1:3:size(experts,4)
    if (i+2)<size(experts,4)
        eegdata = nanmean(experts(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            Temporal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


n=1;
Temporal_bnf = zeros(4,9*2,6);
for i=1:3:size(bnf,4)
    if (i+2)<size(bnf,4)
        eegdata = nanmean(bnf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            Temporal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



n=1;
Temporal_bf = zeros(4,9*2,6);
for i=1:3:size(bf,4)
    if (i+2)<size(bf,4)
        eegdata = nanmean(bf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            Temporal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


%LeftTemporal Clusters

post = [5];
n=1;
LeftTemporal_experts = zeros(4,7*1,6);
for i=1:3:size(experts,4)
    if (i+2)<size(experts,4)
        eegdata = nanmean(experts(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftTemporal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


n=1;
LeftTemporal_bnf = zeros(4,9*1,6);
for i=1:3:size(bnf,4)
    if (i+2)<size(bnf,4)
        eegdata = nanmean(bnf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftTemporal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



n=1;
LeftTemporal_bf = zeros(4,9*1,6);
for i=1:3:size(bf,4)
    if (i+2)<size(bf,4)
        eegdata = nanmean(bf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftTemporal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



%RightTemporal Clusters

post = [10];
n=1;
RightTemporal_experts = zeros(4,7*1,6);
for i=1:3:size(experts,4)
    if (i+2)<size(experts,4)
        eegdata = nanmean(experts(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightTemporal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


n=1;
RightTemporal_bnf = zeros(4,9*1,6);
for i=1:3:size(bnf,4)
    if (i+2)<size(bnf,4)
        eegdata = nanmean(bnf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightTemporal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



n=1;
RightTemporal_bf = zeros(4,9*1,6);
for i=1:3:size(bf,4)
    if (i+2)<size(bf,4)
        eegdata = nanmean(bf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightTemporal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


%LeftFrontal Clusters

n=1;
LeftFrontal_experts = zeros(4,7*4,6);
for i=1:3:size(experts,4)
    if (i+2)<size(experts,4)
        eegdata = nanmean(experts(:,[1,2,3,4], :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftFrontal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


n=1;
LeftFrontal_bnf = zeros(4,9*4,6);
for i=1:3:size(bnf,4)
    if (i+2)<size(bnf,4)
        eegdata = nanmean(bnf(:,[1,2,3,4], :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftFrontal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



n=1;
LeftFrontal_bf = zeros(4,9*4,6);
for i=1:3:size(bf,4)
    if (i+2)<size(bf,4)
        eegdata = nanmean(bf(:,[1,2,3,4], :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftFrontal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


%RightFrontal Clusters

n=1;
RightFrontal_experts = zeros(4,7*4,6);
for i=1:3:size(experts,4)
    if (i+2)<size(experts,4)
        eegdata = nanmean(experts(:,[11,12,13,14], :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightFrontal_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


n=1;
RightFrontal_bnf = zeros(4,9*4,6);
for i=1:3:size(bnf,4)
    if (i+2)<size(bnf,4)
        eegdata = nanmean(bnf(:,[11,12,13,14], :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightFrontal_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



n=1;
RightFrontal_bf = zeros(4,9*4,6);
for i=1:3:size(bf,4)
    if (i+2)<size(bf,4)
        eegdata = nanmean(bf(:,[11,12,13,14], :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightFrontal_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end




%RightPosterior Clusters
post = [8,9];
n=1;
RightPosterior_experts = zeros(4,7*2,6);
for i=1:3:size(experts,4)
    if (i+2)<size(experts,4)
        eegdata = nanmean(experts(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightPosterior_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


n=1;
RightPosterior_bnf = zeros(4,9*2,6);
for i=1:3:size(bnf,4)
    if (i+2)<size(bnf,4)
        eegdata = nanmean(bnf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightPosterior_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



n=1;
RightPosterior_bf = zeros(4,9*2,6);
for i=1:3:size(bf,4)
    if (i+2)<size(bf,4)
        eegdata = nanmean(bf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            RightPosterior_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


%LeftPosterior Clusters
post = [6,7];
n=1;
LeftPosterior_experts = zeros(4,7*2,6);
for i=1:3:size(experts,4)
    if (i+2)<size(experts,4)
        eegdata = nanmean(experts(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftPosterior_experts(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end


n=1;
LeftPosterior_bnf = zeros(4,9*2,6);
for i=1:3:size(bnf,4)
    if (i+2)<size(bnf,4)
        eegdata = nanmean(bnf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftPosterior_bnf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end



n=1;
LeftPosterior_bf = zeros(4,9*2,6);
for i=1:3:size(bf,4)
    if (i+2)<size(bf,4)
        eegdata = nanmean(bf(:,post, :,i:i+2),4); 
        for j=1:4
            eegdata_band = eegdata(:,:,j);
            LeftPosterior_bf(j,:,n) = eegdata_band(:);
        end
        n=n+1;
    end
end
%% Visualizations

% for i=1:4
%     figure
%     %Theta
%     x = Frontal_bf(i,:,:);
%     x = permute(x,[2 3 1]);
%     boxplot(x)
%     hold on
%     y = Frontal_bnf(i,:,:);
%     y = permute(y,[2 3 1]);
%     boxplot(y)
%     hold on
%     z = Frontal_experts(i,:,:);
%     z = permute(z,[2 3 1]);
%     boxplot(z)
% end
% 
% for i=1:4
%     figure
%     %Theta
%     x = MidFrontal_bf(i,:,:);
%     x = permute(x,[2 3 1]);
%     boxplot(x)
%     hold on
%     y = MidFrontal_bnf(i,:,:);
%     y = permute(y,[2 3 1]);
%     boxplot(y)
%     hold on
%     z = MidFrontal_experts(i,:,:);
%     z = permute(z,[2 3 1]);
%     boxplot(z)
% end
% 
% for i=1:4
%     figure
%     %Theta
%     x = Posterior_bf(i,:,:);
%     x = permute(x,[2 3 1]);
%     boxplot(x)
%     hold on
%     y = Posterior_bnf(i,:,:);
%     y = permute(y,[2 3 1]);
%     boxplot(y)
%     hold on
%     z = Posterior_experts(i,:,:);
%     z = permute(z,[2 3 1]);
%     boxplot(z)
% end
% 
% for i=1:4
%     figure
%     %Theta
%     x = Temporal_bf(i,:,:);
%     x = permute(x,[2 3 1]);
%     boxplot(x)
%     hold on
%     y = Temporal_bnf(i,:,:);
%     y = permute(y,[2 3 1]);
%     boxplot(y)
%     hold on
%     z = Temporal_experts(i,:,:);
%     z = permute(z,[2 3 1]);
%     boxplot(z)
% end
% 
% 
% for i=1:4
%     figure
%     %Theta
%     x = RightFrontal_bf(i,:,:);
%     x = permute(x,[2 3 1]);
%     boxplot(x)
%     hold on
%     y = RightFrontal_bnf(i,:,:);
%     y = permute(y,[2 3 1]);
%     boxplot(y)
%     hold on
%     z = RightFrontal_experts(i,:,:);
%     z = permute(z,[2 3 1]);
%     boxplot(z)
% end
% 
% 
% for i=1:4
%     figure
%     %Theta
%     x = LeftFrontal_bf(i,:,:);
%     x = permute(x,[2 3 1]);
%     boxplot(x)
%     hold on
%     y = LeftFrontal_bnf(i,:,:);
%     y = permute(y,[2 3 1]);
%     boxplot(y)
%     hold on
%     z = LeftFrontal_experts(i,:,:);
%     z = permute(z,[2 3 1]);
%     boxplot(z)
% end


%%

% 
% midfrontal_exp = nanmean(MidFrontal_experts,2);
% 
% midfrontal_bf = nanmean(MidFrontal_bf,2);
% 
% midfrontal_bnf = nanmean(MidFrontal_bnf,2);
% 
% midfrontal_exp = permute(midfrontal_exp,[3 1 2]);
% midfrontal_bf = permute(midfrontal_bf,[3 1 2]);
% midfrontal_bnf = permute(midfrontal_bnf,[3 1 2]);
% 
% x = [midfrontal_exp];
% boxplot(x)
% hold on
% y = [midfrontal_bf];
% boxplot(y)
% hold on
% z = [midfrontal_bnf];
% boxplot(z)

% 
% 
% 
% Frontal_exp = nanmean(Frontal_experts,2);
% 
% Frontal_bf = nanmean(Frontal_bf,2);
% 
% Frontal_bnf = nanmean(Frontal_bnf,2);
% 
% Frontal_exp = permute(Frontal_exp,[3 1 2]);
% Frontal_bf = permute(Frontal_bf,[3 1 2]);
% Frontal_bnf = permute(Frontal_bnf,[3 1 2]);
% 
% x = [Frontal_exp];
% boxplot(x)
% hold on
% y = [Frontal_bf];
% boxplot(y)
% hold on
% z = [Frontal_bnf];
% boxplot(z)
% 
% 
% 
% Posterior_exp = nanmean(Posterior_experts,2);
% 
% Posterior_bf = nanmean(Posterior_bf,2);
% 
% Posterior_bnf = nanmean(Posterior_bnf,2);
% 
% Posterior_exp = permute(Posterior_exp,[3 1 2]);
% Posterior_bf = permute(Posterior_bf,[3 1 2]);
% Posterior_bnf = permute(Posterior_bnf,[3 1 2]);
% 
% x = [Posterior_exp];
% boxplot(x)
% hold on
% y = [Posterior_bf];
% boxplot(y)
% hold on
% z = [Posterior_bnf];
% boxplot(z)

%% Open eyes experiment

% 
% 
% theta=1;
% alpha=2;
% beta=3;
% gamma=4;
% n=2;
% for i=1:length(eegdata_experts_freqs)
%    for z=1:size(eegdata_experts_freqs{i}{1},1)
%         experts(i,z,theta) =  100*(nanmean(eegdata_experts_freqs{i}{1}(z,3:8) - nanmean(eegdata_experts_freqs{i}{n}(z,3:8))))/nanmean(eegdata_experts_freqs{i}{n}(z,3:8));
%         experts(i,z,alpha) =  100*(nanmean(eegdata_experts_freqs{i}{1}(z,8:14) - nanmean(eegdata_experts_freqs{i}{n}(z,8:14))))/nanmean(eegdata_experts_freqs{i}{n}(z,8:14));
%         experts(i,z,beta) =  100*(nanmean(eegdata_experts_freqs{i}{1}(z,14:30) - nanmean(eegdata_experts_freqs{i}{n}(z,14:30))))/nanmean(eegdata_experts_freqs{i}{n}(z,14:30));
%         experts(i,z,gamma) =  100*(nanmean(eegdata_experts_freqs{i}{1}(z,30:end) - nanmean(eegdata_experts_freqs{i}{n}(z,3:8))))/nanmean(eegdata_experts_freqs{i}{n}(z,30:end));
%    end
% end
% 
% 
% for i=1:length(eegdata_bf_freqs)
%    for z=1:size(eegdata_bf_freqs{i}{1},1)
%         bf(i,z,theta) =  100*(nanmean(eegdata_bf_freqs{i}{1}(z,3:8) - nanmean(eegdata_bf_freqs{i}{n}(z,3:8))))/nanmean(eegdata_bf_freqs{i}{n}(z,3:8));
%         bf(i,z,alpha) =  100*(nanmean(eegdata_bf_freqs{i}{1}(z,8:14) - nanmean(eegdata_bf_freqs{i}{n}(z,8:14))))/nanmean(eegdata_bf_freqs{i}{n}(z,8:14));
%         bf(i,z,beta) =  100*(nanmean(eegdata_bf_freqs{i}{1}(z,14:30) - nanmean(eegdata_bf_freqs{i}{n}(z,14:30))))/nanmean(eegdata_bf_freqs{i}{n}(z,14:30));
%         bf(i,z,gamma) =  100*(nanmean(eegdata_bf_freqs{i}{1}(z,30:end) - nanmean(eegdata_bf_freqs{i}{n}(z,3:8))))/nanmean(eegdata_bf_freqs{i}{n}(z,30:end));
%    end
% end
% 
% 
% for i=1:length(eegdata_bnf_freqs)
%    for z=1:size(eegdata_bnf_freqs{i}{1},1)
%         bnf(i,z,theta) =  100*(nanmean(eegdata_bnf_freqs{i}{1}(z,3:8) - nanmean(eegdata_bnf_freqs{i}{n}(z,3:8))))/nanmean(eegdata_bnf_freqs{i}{n}(z,3:8));
%         bnf(i,z,alpha) =  100*(nanmean(eegdata_bnf_freqs{i}{1}(z,8:14) - nanmean(eegdata_bnf_freqs{i}{n}(z,8:14))))/nanmean(eegdata_bnf_freqs{i}{n}(z,8:14));
%         bnf(i,z,beta) =  100*(nanmean(eegdata_bnf_freqs{i}{1}(z,14:30) - nanmean(eegdata_bnf_freqs{i}{n}(z,14:30))))/nanmean(eegdata_bnf_freqs{i}{n}(z,14:30));
%         bnf(i,z,gamma) =  100*(nanmean(eegdata_bnf_freqs{i}{1}(z,30:end) - nanmean(eegdata_bnf_freqs{i}{n}(z,3:8))))/nanmean(eegdata_bnf_freqs{i}{n}(z,30:end));
%    end
% end