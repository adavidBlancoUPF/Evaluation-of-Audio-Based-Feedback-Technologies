%% Experts

n_trials_ica_exp = zeros(7,1);

load('Results\Expert1\Expert1_eeg_electrodes.mat')
eegdata_experts{1} = load_subject(eeg_electrodes_Expert1);
start_trial = 6;
end_trial = length(eegdata_experts{1});
for i=1:end_trial
    eegdata_experts{1}{i} = clean_data(eegdata_experts{1}{i});
end

load('Results\Expert2\Expert2_eeg_electrodes.mat')
eegdata_experts{2} = load_subject(eeg_electrodes_Expert2);
start_trial = 6;
end_trial = length(eegdata_experts{2});
for i=1:end_trial
    eegdata_experts{2}{i} = clean_data(eegdata_experts{2}{i});
end

load('Results\Expert3\Expert3_eeg_electrodes.mat')
eegdata_experts{3} = load_subject(eeg_electrodes_Expert3);
start_trial = 8;
end_trial = length(eegdata_experts{3});
for i=1:end_trial
    eegdata_experts{3}{i} = clean_data(eegdata_experts{3}{i});
end


load('Results\Expert4\Expert4_eeg_electrodes.mat')
eegdata_experts{4} = load_subject(eeg_electrodes_Expert4);
start_trial = 6;
end_trial = length(eegdata_experts{4});
for i=1:end_trial
    eegdata_experts{4}{i} = clean_data(eegdata_experts{4}{i});
end



load('Results\Expert5\Expert5_eeg_electrodes.mat')
eegdata_experts{5} = load_subject(eeg_electrodes_Expert5);
start_trial = 6;
end_trial = length(eegdata_experts{5});
for i=1:end_trial
    eegdata_experts{5}{i} = clean_data(eegdata_experts{5}{i});
end



load('Results\Expert6\Expert6_eeg_electrodes.mat')
eegdata_experts{6} = load_subject(eeg_electrodes_Expert6);
start_trial = 6;
end_trial = length(eegdata_experts{6});
for i=1:end_trial
    eegdata_experts{6}{i} = clean_data(eegdata_experts{6}{i});
end



load('Results\Expert7\Expert7_eeg_electrodes.mat')
eegdata_experts{7} = load_subject(eeg_electrodes_Expert7);
start_trial = 7;
end_trial = length(eegdata_experts{7});
for i=1:end_trial
    eegdata_experts{7}{i} = clean_data(eegdata_experts{7}{i});
end
