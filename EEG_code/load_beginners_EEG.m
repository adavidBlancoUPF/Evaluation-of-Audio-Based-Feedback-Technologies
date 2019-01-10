%% Compute Subject4 EEG power bands for each trial with 2s window (Beginner)
[eeg_electrodes_Subject4, strial_Subject4] = power_band_computation_window...
    ('EEG_Subjects\Subject4\Subject4_Trials.edf',window_size);
save('Results\Subject4\Subject4_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject4\Subject4_eeg_electrodes.mat
eeg_electrodes_Subject4 = destroy_artifacts(eeg_electrodes_Subject4,1,...
    length(strial_Subject4));
save('Results\Subject4\Subject4_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data



%% Compute Subject5 EEG power bands for each trial with 2s window (Beginner)
[eeg_electrodes_Subject5, strial_Subject5] = power_band_computation_window...
    ('EEG_Subjects\Subject5\Subject5_Trials.edf',window_size);
save('Results\Subject5\Subject5_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject5\Subject5_eeg_electrodes.mat
eeg_electrodes_Subject5 = destroy_artifacts(eeg_electrodes_Subject5,1,...
    length(strial_Subject5));
save('Results\Subject5\Subject5_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Subject6 EEG power bands for each trial with 2s window (Beginner)
[eeg_electrodes_Subject6, strial_Subject6] = power_band_computation_window...
    ('EEG_Subjects\Subject6\Subject6_Trials.edf',window_size);
save('Results\Subject6\Subject6_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject6\Subject6_eeg_electrodes.mat
eeg_electrodes_Subject6 = destroy_artifacts(eeg_electrodes_Subject6,1,...
    length(strial_Subject6));
save('Results\Subject6\Subject6_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Subject7 EEG power bands for each trial with 2s window (Beginner)
[eeg_electrodes_Subject7, strial_Subject7] = power_band_computation_window...
    ('EEG_Subjects\Subject7\Subject7_Trials.edf',window_size);
save('Results\Subject7\Subject7_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject7\Subject7_eeg_electrodes.mat
eeg_electrodes_Subject7 = destroy_artifacts(eeg_electrodes_Subject7,1,...
    length(strial_Subject7));
save('Results\Subject7\Subject7_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Subject8 EEG power bands for each trial with 2s window (Beginner)
[eeg_electrodes_Subject8, strial_Subject8] = power_band_computation_window...
    ('EEG_Subjects\Subject8\Subject8_Trials.edf',window_size);
save('Results\Subject8\Subject8_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject8\Subject8_eeg_electrodes.mat
eeg_electrodes_Subject8 = destroy_artifacts(eeg_electrodes_Subject8,1,...
    length(strial_Subject8));
save('Results\Subject8\Subject8_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Subject3 EEG power bands for each trial with 2s window (Beginner)
[eeg_electrodes_Subject3, strial_Subject3] = power_band_computation_window...
    ('EEG_Subjects\Subject3\Subject3_Trials.edf',window_size);
save('Results\Subject3\Subject3_eeg_electrodes.mat');

clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject3\Subject3_eeg_electrodes.mat
eeg_electrodes_Subject3 = destroy_artifacts(eeg_electrodes_Subject3,1,...
    length(strial_Subject3));
save('Results\Subject3\Subject3_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data



%% Compute Subject1 power band for each trial
[eeg_electrodes_Subject1, strial_Subject1] = power_band_computation_window...
    ('EEG_Subjects\Subject1\Subject1_Trials.edf',window_size);
save('Results\Subject1\Subject1_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject1\Subject1_eeg_electrodes.mat
eeg_electrodes_Subject1 = destroy_artifacts(eeg_electrodes_Subject1,1,...
    length(strial_Subject1));
save('Results\Subject1\Subject1_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data




%% Compute Subject9 power band for each trial
[eeg_electrodes_Subject9, strial_Subject9] = power_band_computation_window...
    ('EEG_Subjects\Subject9\Subject9_Trials.edf',window_size);
save('Results\Subject9\Subject9_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject9\Subject9_eeg_electrodes.mat
eeg_electrodes_Subject9 = destroy_artifacts(eeg_electrodes_Subject9,1,...
    length(strial_Subject9));
save('Results\Subject9\Subject9_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Subject10 EEG power bands for each trial with 2s window (Beginner)
[eeg_electrodes_Subject10, strial_Subject10] = power_band_computation_window...
    ('EEG_Subjects\Subject10\Subject10_Trials.edf',window_size);
save('Results\Subject10\Subject10_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject10\Subject10_eeg_electrodes.mat
eeg_electrodes_Subject10 = destroy_artifacts(eeg_electrodes_Subject10,1,...
    length(strial_Subject10));
save('Results\Subject10\Subject10_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data



%% Compute Subject2 EEG power bands for each trial with 2s window (Beginner)
[eeg_electrodes_Subject2, strial_Subject2] = power_band_computation_window...
    ('EEG_Subjects\Subject2\Subject2_Trials.edf',window_size);
save('Results\Subject2\Subject2_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject2\Subject2_eeg_electrodes.mat
eeg_electrodes_Subject2 = destroy_artifacts(eeg_electrodes_Subject2,1,...
    length(strial_Subject2));
save('Results\Subject2\Subject2_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data
