%% Feedback Group

n_trials_ica_bf = zeros(7,1);


load('Results\Subject1fb\Subject1fb_eeg_electrodes.mat')
eegdata_bf{1} = load_subject(eeg_electrodes_Subject1fb);
start_trial = 6;
end_trial = length(eegdata_bf{1});
for i=1:end_trial
    eegdata_bf{1}{i} = clean_data(eegdata_bf{1}{i});
end


load('Results\Subject2fb\Subject2fb_eeg_electrodes.mat')
eegdata_bf{2} = load_subject(eeg_electrodes_Subject2fb);
start_trial = 7;
end_trial = length(eegdata_bf{2});
for i=1:end_trial
    eegdata_bf{2}{i} = clean_data(eegdata_bf{2}{i});
end


load('Results\Subject3fb\Subject3fb_eeg_electrodes.mat')
eegdata_bf{3} = load_subject(eeg_electrodes_Subject3fb);
start_trial = 6;
end_trial = length(eegdata_bf{3});
for i=1:end_trial
    eegdata_bf{3}{i} = clean_data(eegdata_bf{3}{i});
end

load('Results\Subject4fb\Subject4fb_eeg_electrodes.mat')
eegdata_bf{4} = load_subject(eeg_electrodes_Subject4fb);
start_trial = 6;
end_trial = length(eegdata_bf{4});
for i=1:end_trial
    eegdata_bf{4}{i} = clean_data(eegdata_bf{4}{i});
end

load('Results\Subject5fb\Subject5fb_eeg_electrodes.mat')
eegdata_bf{5} = load_subject(eeg_electrodes_Subject5fb);
start_trial = 6;
end_trial = length(eegdata_bf{5});
for i=1:end_trial
    eegdata_bf{5}{i} = clean_data(eegdata_bf{5}{i});
end


load('Results\Subject6fb\Subject6fb_eeg_electrodes.mat')
eegdata_bf{6} = load_subject(eeg_electrodes_Subject6fb);
start_trial = 6;
end_trial = length(eegdata_bf{6});
for i=1:end_trial
    eegdata_bf{6}{i} = clean_data(eegdata_bf{6}{i});
end

load('Results\Subject7fb\Subject7fb_eeg_electrodes.mat')
eegdata_bf{7} = load_subject(eeg_electrodes_Subject7fb);
start_trial = 6;
end_trial = length(eegdata_bf{7});
for i=1:end_trial
    eegdata_bf{7}{i} = clean_data(eegdata_bf{7}{i});
end

load('Results\Subject8fb\Subject8fb_eeg_electrodes.mat')
eegdata_bf{8} = load_subject(eeg_electrodes_Subject8fb);
start_trial = 6;
end_trial = length(eegdata_bf{8});
for i=1:end_trial
    eegdata_bf{8}{i} = clean_data(eegdata_bf{8}{i});
end

load('Results\Subject9fb\Subject9fb_eeg_electrodes.mat')
eegdata_bf{9} = load_subject(eeg_electrodes_Subject9fb);
start_trial = 6;
end_trial = length(eegdata_bf{9});
for i=1:end_trial
    eegdata_bf{9}{i} = clean_data(eegdata_bf{9}{i});
end

