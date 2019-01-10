function [eegdata] = load_subject_ICA(eeg_electrodes)


n_electrodes = 14;
for j=1:length(eeg_electrodes{1}.trials)
    eegdata{j} = zeros(n_electrodes,length(eeg_electrodes{1}.trials{j}.raw_data));
    for i=1:n_electrodes
        eegdata{j}(i,:) = eeg_electrodes{i}.trials{j}.raw_data;
    end
end

end

