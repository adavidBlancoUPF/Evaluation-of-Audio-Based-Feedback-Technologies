
load Results\Expert1\Expert1_eeg_electrodes_windows.mat


eegdata1 = load_subject(eeg_electrodes_Expert1);


eegdata_trial1 = eegdata1{1};

eegdata_trial1_avg_ref = eegdata_trial1 - median(eegdata_trial1,2);

median_val = nanmedian(eegdata_trial1_avg_ref(:));

val_mzscore = 0.6745*(eegdata_trial1_avg_ref - median_val)./mad(eegdata_trial1_avg_ref(:));
                   
for i=1:size(eegdata_trial1_avg_ref,1)              
    outliers = find(val_mzscore(i,:)<-3.5 | val_mzscore(i,:)>3.5);
    eegdata_trial1_avg_ref(i,outliers) = NaN;
    median_val_channel = nanmedian(eegdata_trial1_avg_ref(i,:));
    val_mzscore_channel = 0.6745*(eegdata_trial1_avg_ref(i,:) - median_val_channel)./mad(eegdata_trial1_avg_ref(i,:));
    outliers_channel = find(val_mzscore_channel<-3 | val_mzscore_channel>3);
    eegdata_trial1_avg_ref(i,outliers_channel) = NaN;
end

nanstd(eegdata_trial1_avg_ref,[],2)
channel_deviation = nanstd(eegdata_trial1_avg_ref,[],2);

outliers_channel_deviation = find(channel_deviation>50);
eegdata_trial1_avg_ref(outliers_channel_deviation,:) = NaN;

