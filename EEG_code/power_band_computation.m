%% Compute power bands

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
        experts(i,z,theta,t) =  nanmean(eegdata_experts_freqs{i}{n}(z,3:8));
        experts(i,z,alpha,t) =  nanmean(eegdata_experts_freqs{i}{n}(z,8:14));
        experts(i,z,beta,t) =  nanmean(eegdata_experts_freqs{i}{n}(z,14:30));
        experts(i,z,gamma,t) =  nanmean(eegdata_experts_freqs{i}{n}(z,30:end));
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
        bf(i,z,theta,t) =  nanmean(eegdata_bf_freqs{i}{n}(z,3:8));
        bf(i,z,alpha,t) =  nanmean(eegdata_bf_freqs{i}{n}(z,8:14));
        bf(i,z,beta,t) =  nanmean(eegdata_bf_freqs{i}{n}(z,14:30));
        bf(i,z,gamma,t) =  nanmean(eegdata_bf_freqs{i}{n}(z,30:end));
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
        bnf(i,z,theta,t) =  nanmean(eegdata_bnf_freqs{i}{n}(z,3:8));
        bnf(i,z,alpha,t) =  nanmean(eegdata_bnf_freqs{i}{n}(z,8:14));
        bnf(i,z,beta,t) =  nanmean(eegdata_bnf_freqs{i}{n}(z,14:30));
        bnf(i,z,gamma,t) =  nanmean(eegdata_bnf_freqs{i}{n}(z,30:end));
        t=t+1;
       end
   end
end


save('bf','bf')
save('bnf','bnf')
save('experts','experts')

%% Clean Between trials
bf_clean = bf;
for i=1:size(bf,1)
    for j=1:size(bf,2)
        for z=1:size(bf,3)
            outliers = [];
            median_val = nanmedian(bf(i,j,z,:));
            val_mzscore = 0.6745*(bf(i,j,z,:) - median_val)./mad(bf(i,j,z,:));
            val_mzscore = permute(val_mzscore,[4 3 2 1]);
            outliers = find(val_mzscore<-3.5 | val_mzscore >3.5);
            bf_clean(i,j,z,outliers) = NaN;
        end
    end
end

bnf_clean = bnf;
for i=1:size(bnf,1)
    for j=1:size(bnf,2)
        for z=1:size(bnf,3)
            outliers = [];
            median_val = nanmedian(bnf(i,j,z,:));
            val_mzscore = 0.6745*(bnf(i,j,z,:) - median_val)./mad(bnf(i,j,z,:));
            val_mzscore = permute(val_mzscore,[4 3 2 1]);
            outliers = find(val_mzscore<-3.5 | val_mzscore >3.5);
            bnf_clean(i,j,z,outliers) = NaN;
        end
    end
end



experts_clean = experts;
for i=1:size(experts,1)
    for j=1:size(experts,2)
        for z=1:size(experts,3)
            %Clean data
            outliers = [];
            median_val = nanmedian(experts(i,j,z,:));
            val_mzscore = 0.6745*(experts(i,j,z,:) - median_val)./mad(experts(i,j,z,:));
            val_mzscore = permute(val_mzscore,[4 3 2 1]);
            outliers = find(val_mzscore<-3.5 | val_mzscore >3.5);
            experts_clean(i,j,z,outliers) = NaN;
        end
    end
end

