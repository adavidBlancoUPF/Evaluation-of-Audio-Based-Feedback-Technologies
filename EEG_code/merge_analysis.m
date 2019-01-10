function [ eeg_electrodes ] = merge_analysis( eeg_electrodes_1, eeg_electrodes_2 )
%MERGE_ANALYSIS Summary of this function goes here
%   Detailed explanation goes here
eeg_electrodes = eeg_electrodes_1;

for i=1:length(eeg_electrodes)
    n_trials = (length(eeg_electrodes_1{1}.trials)+1);
    for j=1:length(eeg_electrodes_2{i}.trials)
        eeg_electrodes{i}.trials{n_trials} = ...
            eeg_electrodes_2{i}.trials{j};
        n_trials = n_trials + 1;
    end
end

end

