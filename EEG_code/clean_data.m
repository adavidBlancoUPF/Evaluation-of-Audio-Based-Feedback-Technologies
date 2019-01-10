function [ eegdata_trial1_avg_ref ] = clean_data( eegdata_trial1 )
%CLEAN_DATA Summary of this function goes here
%   Detailed explanation goes here


%eegdata_trial1_avg_ref = eegdata_trial1 - mean(eegdata_trial1,2);
eegdata_trial1_avg_ref = bsxfun(@minus, eegdata_trial1,mean(eegdata_trial1,2));
median_val = median(eegdata_trial1_avg_ref(:));

val_mzscore = 0.6745*(eegdata_trial1_avg_ref - median_val)./mad(eegdata_trial1_avg_ref(:));
                   
for i=1:size(eegdata_trial1_avg_ref,1)              
    outliers = find(val_mzscore(i,:)<-3.5 | val_mzscore(i,:)>3.5);
    eegdata_trial1_avg_ref(i,outliers) = NaN;
    median_val_channel = nanmedian(eegdata_trial1_avg_ref(i,:));
    val_mzscore_channel = 0.6745*(eegdata_trial1_avg_ref(i,:) - median_val_channel)./mad(eegdata_trial1_avg_ref(i,:));
    outliers_channel = find(val_mzscore_channel<-3 | val_mzscore_channel>3);
    eegdata_trial1_avg_ref(i,outliers_channel) = NaN;
end

channel_deviation = nanstd(eegdata_trial1_avg_ref,[],2);

outliers_channel_deviation = find(channel_deviation>40);
eegdata_trial1_avg_ref(outliers_channel_deviation,:) = NaN;



end

