%% Compute Subject4fb power band for each trial
[eeg_electrodes_Subject4fb, strial_Subject4fb] = power_band_computation_window...
    ('EEG_Subjects\Subject4fb\Subject4fb_Trials.edf',window_size);

%We delete a wrong trial
strial_Subject4fb(6) = [];
strial_Subject4fb(11) = [];
strial_Subject4fb(16) = [];

for i=1:length(eeg_electrodes_Subject4fb)
    eeg_electrodes_Subject4fb{i}.trials(6) = [];
    eeg_electrodes_Subject4fb{i}.trials(11) = [];
    eeg_electrodes_Subject4fb{i}.trials(16) = [];
end
save('Results\Subject4fb\Subject4fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject4fb\Subject4fb_eeg_electrodes.mat
eeg_electrodes_Subject4fb = destroy_artifacts(eeg_electrodes_Subject4fb,1,...
    length(strial_Subject4fb));
save('Results\Subject4fb\Subject4fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Subject2fb power band for each trial
[eeg_electrodes_Subject2fb, strial_Subject2fb] = power_band_computation_window...
    ('EEG_Subjects\Subject2fb\Subject2fb_Trials.edf',window_size);


strial_Subject2fb(20) = [];

for i=1:length(eeg_electrodes_Subject2fb)
    eeg_electrodes_Subject2fb{i}.trials(20) = [];
end

save('Results\Subject2fb\Subject2fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject2fb\Subject2fb_eeg_electrodes.mat
eeg_electrodes_Subject2fb = destroy_artifacts(eeg_electrodes_Subject2fb,1,...
    length(strial_Subject2fb));
save('Results\Subject2fb\Subject2fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Subject3fb power band for each trial
[eeg_electrodes_Subject3fb, strial_Subject3fb] = power_band_computation_window...
    ('EEG_Subjects\Subject3fb\Subject3fb_Trials.edf',window_size);
save('Results\Subject3fb\Subject3fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject3fb\Subject3fb_eeg_electrodes.mat
eeg_electrodes_Subject3fb = destroy_artifacts(eeg_electrodes_Subject3fb,1,...
    length(strial_Subject3fb));
save('Results\Subject3fb\Subject3fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Subject1fb power band for each trial
[eeg_electrodes_Subject1fb, strial_Subject1fb] = power_band_computation_window...
    ('EEG_Subjects\Subject1fb\Subject1fb_Trials.edf',window_size);
save('Results\Subject1fb\Subject1fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject1fb\Subject1fb_eeg_electrodes.mat
eeg_electrodes_Subject1fb = destroy_artifacts(eeg_electrodes_Subject1fb,1,...
    length(strial_Subject1fb));
save('Results\Subject1fb\Subject1fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data






%% Compute Subject5fb power band for each trial

%1st part (baseline)
[eeg_electrodes_Subject5fb_baseline, strial_Subject5fb_baseline] = ...
    power_band_computation_window...
    ('EEG_Subjects\Subject5fb\Subject5fb_baseline.edf',window_size);

%2nd part (from 1 to 6)
[eeg_electrodes_Subject5fb_Trials1_6, strial_Subject5fb_Trials_1_6] = ...
    power_band_computation_window...
    ('EEG_Subjects\Subject5fb\Subject5fb_Trials_1_6.edf',window_size);

%We delete wrong trial!
for i=1:length(eeg_electrodes_Subject5fb_Trials1_6)
    eeg_electrodes_Subject5fb_Trials1_6{i}.trials(6) = [];
end

%We merge first and second part
eeg_electrodes_Subject5fb = merge_analysis(eeg_electrodes_Subject5fb_baseline,...
    eeg_electrodes_Subject5fb_Trials1_6);


%3rd part (from 7 to 8)
[eeg_electrodes_Subject5fb_Trials7_8, strial_Subject5fb_Trials_7_8] = ...
    power_band_computation_window...
    ('EEG_Subjects\Subject5fb\Subject5fb_Trials_7_8.edf',window_size);

%Merge of the 1st and second with the 3rd part
eeg_electrodes_Subject5fb = merge_analysis(eeg_electrodes_Subject5fb,...
    eeg_electrodes_Subject5fb_Trials7_8);

%4th part (from 9 to 13)
[eeg_electrodes_Subject5fb_Trials9_13, strial_Subject5fb_Trials_9_13] = ...
    power_band_computation_window...
    ('EEG_Subjects\Subject5fb\Subject5fb_Trials_9_13.edf',window_size);

%Merge with the 4th part
eeg_electrodes_Subject5fb = merge_analysis(eeg_electrodes_Subject5fb,...
    eeg_electrodes_Subject5fb_Trials9_13);

%5th part (from 14 to 17)
[eeg_electrodes_Subject5fb_Trials14_17, strial_Subject5fb_Trials_14_17] = ...
    power_band_computation_window...
    ('EEG_Subjects\Subject5fb\Subject5fb_Trials_14_17.edf',window_size);


%Merge with the 5th part
eeg_electrodes_Subject5fb = merge_analysis(eeg_electrodes_Subject5fb,...
    eeg_electrodes_Subject5fb_Trials14_17);


%6th part (from 18 to... 18)
[eeg_electrodes_Subject5fb_Trials18, strial_Subject5fb_Trials_18] = ...
    power_band_computation_window...
    ('EEG_Subjects\Subject5fb\Subject5fb_Trials_18.edf',window_size);

%Merge with the 6th part
eeg_electrodes_Subject5fb = merge_analysis(eeg_electrodes_Subject5fb,...
    eeg_electrodes_Subject5fb_Trials14_17);


%7th part (from 19 to 21)
[eeg_electrodes_Subject5fb_Trials19_21, strial_Subject5fb_Trials_19_21] = ...
    power_band_computation_window...
    ('EEG_Subjects\Subject5fb\Subject5fb_Trials_19_21.edf',window_size);

%Merge with the 7th part
eeg_electrodes_Subject5fb = merge_analysis(eeg_electrodes_Subject5fb,...
    eeg_electrodes_Subject5fb_Trials14_17);


save('Results\Subject5fb\Subject5fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject5fb\Subject5fb_eeg_electrodes.mat
eeg_electrodes_Subject5fb = destroy_artifacts(eeg_electrodes_Subject5fb,1,...
    length(eeg_electrodes_Subject5fb{1}.trials));
save('Results\Subject5fb\Subject5fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data



%% Compute Subject6fb power band for each trial
[eeg_electrodes_Subject6fb, strial_Subject6fb] = power_band_computation_window...
    ('EEG_Subjects\Subject6fb\Subject6fb_Trials.edf',window_size);
save('Results\Subject6fb\Subject6fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject6fb\Subject6fb_eeg_electrodes.mat
eeg_electrodes_Subject6fb = destroy_artifacts(eeg_electrodes_Subject6fb,1,...
    length(strial_Subject6fb));
save('Results\Subject6fb\Subject6fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data




%% Compute Subject7fb power band for each trial
[eeg_electrodes_Subject7fb, strial_Subject7fb] = power_band_computation_window...
    ('EEG_Subjects\Subject7fb\Subject7fb_Trials.edf',window_size);
save('Results\Subject7fb\Subject7fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject7fb\Subject7fb_eeg_electrodes.mat
eeg_electrodes_Subject7fb = destroy_artifacts(eeg_electrodes_Subject7fb,1,...
    length(strial_Subject7fb));
save('Results\Subject7fb\Subject7fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data






%% Compute Subject8fb power band for each trial
[eeg_electrodes_Subject8fb, strial_Subject8fb] = power_band_computation_window...
    ('EEG_Subjects\Subject8fb\Subject8fb_Trials.edf',window_size);
save('Results\Subject8fb\Subject8fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject8fb\Subject8fb_eeg_electrodes.mat
eeg_electrodes_Subject8fb = destroy_artifacts(eeg_electrodes_Subject8fb,1,...
    length(strial_Subject8fb));
save('Results\Subject8fb\Subject8fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data




%% Compute Subject9fb power band for each trial
[eeg_electrodes_Subject9fb_1, strial_Subject9fb_1] = power_band_computation_window...
    ('EEG_Subjects\Subject9fb\Subject9fb_Trials_1.edf',window_size);
%save('Results\Subject9fb\Subject9fb_eeg_electrodes.mat');

% Part 2
[eeg_electrodes_Subject9fb_2, strial_Subject9fb_2] = power_band_computation_window...
    ('EEG_Subjects\Subject9fb\Subject9fb_Trials_2.edf',window_size);



%We merge first and second part
eeg_electrodes_Subject9fb = merge_analysis(eeg_electrodes_Subject9fb_1,...
    eeg_electrodes_Subject9fb_2);

save('Results\Subject9fb\Subject9fb_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Subject9fb\Subject9fb_eeg_electrodes.mat
eeg_electrodes_Subject9fb = destroy_artifacts(eeg_electrodes_Subject9fb,1,...
    length(eeg_electrodes_Subject9fb{1}.trials));
save('Results\Subject9fb\Subject9fb_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data




