function [ eeg_electrodes ] = destroy_artifacts( eeg_electrodes, first_trial, ntrials )
%DESTROY_ARTIFACTS Summary of this function goes here
%   Detailed explanation goes here


median_val = zeros(length(eeg_electrodes{1}.trials{1}.freq_bands),1);
val_mzscore = zeros(length(eeg_electrodes{1}.trials{1}.freq_bands{1}.val),1);

for i=1:length(eeg_electrodes)
    for j=first_trial:(first_trial + ntrials)-1
        for m=1:length(eeg_electrodes{i}.trials{j}.freq_bands)
            median_val(m)  = median(...
                eeg_electrodes{i}.trials{j}.freq_bands{m}.val);
            for z=1:length(eeg_electrodes{i}.trials{j}.freq_bands{m}.val)
                val_mzscore(z) = 0.6745*...
                    (eeg_electrodes{i}.trials{j}.freq_bands{m}.val(z)-...
                    median_val(m))/...
                    mad(eeg_electrodes{i}.trials{j}.freq_bands{m}.val,1);
            end
            outliers = find(abs(val_mzscore)>=3.5);
            eeg_electrodes{i}.trials{j}.freq_bands{m}.val(outliers) = [];
            median_val = zeros(length(eeg_electrodes{i}.trials{j}.freq_bands),1);
            val_mzscore = zeros(...
                length(eeg_electrodes{i}.trials{j}.freq_bands{m}.val),1);
        end
        
    end
end

end

