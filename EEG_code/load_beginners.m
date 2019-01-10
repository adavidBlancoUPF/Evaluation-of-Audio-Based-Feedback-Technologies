%% BNF Group

n_trials_ica_bnf = zeros(7,1);

load('Results\Subject1\Subject1_eeg_electrodes.mat')
eegdata_bnf{1} = load_subject(eeg_electrodes_Subject1);
start_trial = 6;
end_trial = length(eegdata_bnf{1});
for i=1:end_trial
    eegdata_bnf{1}{i} = clean_data(eegdata_bnf{1}{i});
end


load('Results\Subject2\Subject2_eeg_electrodes.mat')
eegdata_bnf{2} = load_subject(eeg_electrodes_Subject2);
start_trial = 5;
end_trial = length(eegdata_bnf{2});
for i=1:end_trial
    eegdata_bnf{2}{i} = clean_data(eegdata_bnf{2}{i});
end


load('Results\Subject3\Subject3_eeg_electrodes.mat')
eegdata_bnf{3} = load_subject(eeg_electrodes_Subject3);
start_trial = 6;
end_trial = length(eegdata_bnf{3});
for i=1:end_trial
    eegdata_bnf{3}{i} = clean_data(eegdata_bnf{3}{i});
end



load('Results\Subject4\Subject4_eeg_electrodes.mat')
eegdata_bnf{4} = load_subject(eeg_electrodes_Subject4);
start_trial = 6;
end_trial = length(eegdata_bnf{4});
for i=1:end_trial
    eegdata_bnf{4}{i} = clean_data(eegdata_bnf{4}{i});
end



load('Results\Subject5\Subject5_eeg_electrodes.mat')
eegdata_bnf{5} = load_subject(eeg_electrodes_Subject5);
start_trial = 6;
end_trial = length(eegdata_bnf{5});
for i=1:end_trial
    eegdata_bnf{5}{i} = clean_data(eegdata_bnf{5}{i});
end



load('Results\Subject6\Subject6_eeg_electrodes.mat')
eegdata_bnf{6} = load_subject(eeg_electrodes_Subject6);
start_trial = 5;
end_trial = length(eegdata_bnf{6});
for i=1:end_trial
    eegdata_bnf{6}{i} = clean_data(eegdata_bnf{6}{i});
end



load('Results\Subject7\Subject7_eeg_electrodes.mat')
eegdata_bnf{7} = load_subject(eeg_electrodes_Subject7);
start_trial = 6;
end_trial = length(eegdata_bnf{7});
for i=1:end_trial
    eegdata_bnf{7}{i} = clean_data(eegdata_bnf{7}{i});
end


load('Results\Subject8\Subject8_eeg_electrodes.mat')
eegdata_bnf{8} = load_subject(eeg_electrodes_Subject8);
start_trial = 6;
end_trial = length(eegdata_bnf{8});
for i=1:end_trial
    eegdata_bnf{8}{i} = clean_data(eegdata_bnf{8}{i});
end



load('Results\Subject9\Subject9_eeg_electrodes.mat')
eegdata_bnf{9} = load_subject(eeg_electrodes_Subject9);
start_trial = 6;
end_trial = length(eegdata_bnf{9});
for i=1:end_trial
    eegdata_bnf{9}{i} = clean_data(eegdata_bnf{9}{i});
end