%% Compute Expert5 EEG power band for each trial
%Due to problems with the recordings the trials are split into two edf
%files
%1st part
[eeg_electrodes_Expert5_1, strial_Expert5_1] = power_band_computation_window...
    ('EEG_Subjects\Expert5\Expert5_1_Trials.edf',window_size);
save('Results\Expert5\Expert5_1_eeg_electrodes.mat');
save('Results\Expert5\Expert5_1_eeg_electrodes.mat');
%2nd part
[eeg_electrodes_Expert5_2, strial_Expert5_2] = power_band_computation_window...
    ('EEG_Subjects\Expert5\Expert5_2_Trials.edf',window_size);
save('Results\Expert5\Expert5_2_eeg_electrodes.mat');

%Now, we mix both cell array into a single one
eeg_electrodes_Expert5 = eeg_electrodes_Expert5_1;


for i=1:length(eeg_electrodes_Expert5)
    n_trials = (length(eeg_electrodes_Expert5_1{1}.trials)+1);
    for j=1:length(eeg_electrodes_Expert5_2{i}.trials)
        eeg_electrodes_Expert5{i}.trials{n_trials} = ...
            eeg_electrodes_Expert5_2{i}.trials{j};
        n_trials = n_trials + 1;
    end
end

save('Results\Expert5\Expert5_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Expert5\Expert5_eeg_electrodes.mat
eeg_electrodes_Expert5 = destroy_artifacts(eeg_electrodes_Expert5,1,...
    (length(strial_Expert5_1)+length(strial_Expert5_2)));
save('Results\Expert5\Expert5_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Expert4 EEG power band for each trial with 2s window

%Due to problems with the recordings the trials are split into two edf
%files
%1st part
[eeg_electrodes_Expert4_1, strial_Expert4_1] = power_band_computation_window...
    ('EEG_Subjects\Expert4\Expert4_1_Trials.edf',window_size);
save('Results\Expert4\Expert4_1_eeg_electrodes.mat');
%2nd part
[eeg_electrodes_Expert4_2, strial_Expert4_2] = power_band_computation_window...
    ('EEG_Subjects\Expert4\Expert4_2_Trials.edf',window_size);
save('Results\Expert4\Expert4_2_eeg_electrodes.mat');

%We delete a wrong trial
strial_Expert4_2(2) = [];
for i=1:length(eeg_electrodes_Expert4_2)
    eeg_electrodes_Expert4_2{i}.trials(2) = [];
end

%Now, we mix both cell array into a single one
eeg_electrodes_Expert4 = eeg_electrodes_Expert4_1;


for i=1:length(eeg_electrodes_Expert4)
    n_trials = 7;
    for j=1:length(eeg_electrodes_Expert4_2{i}.trials)
        eeg_electrodes_Expert4{i}.trials{n_trials} = ...
            eeg_electrodes_Expert4_2{i}.trials{j};
        n_trials = n_trials + 1;
    end
end

save('Results\Expert4\Expert4_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Expert4\Expert4_eeg_electrodes.mat
eeg_electrodes_Expert4 = destroy_artifacts(eeg_electrodes_Expert4,1,...
    (length(strial_Expert4_1)+length(strial_Expert4_2)));
save('Results\Expert4\Expert4_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Expert3 EEG power bands for each trial
[eeg_electrodes_Expert3, strial_Expert3] = power_band_computation_window...
    ('EEG_Subjects\Expert3\Expert3_Trials.edf',window_size);
save('Results\Expert3\Expert3_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Expert3\Expert3_eeg_electrodes.mat
eeg_electrodes_Expert3 = destroy_artifacts(eeg_electrodes_Expert3,1,...
    length(strial_Expert3));
save('Results\Expert3\Expert3_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data

%% Compute Expert2 EEG power bands for each trial

%Due to problems with the recordings the trials are split into two edf
%files
%1st part
[eeg_electrodes_Expert2_1, strial_Expert2_1] = power_band_computation_window...
    ('EEG_Subjects\Expert2\Expert2_1_Trials.edf',window_size);
save('Results\Expert2\Expert2_1_eeg_electrodes.mat');
%2nd part
[eeg_electrodes_Expert2_2, strial_Expert2_2] = power_band_computation_window...
    ('EEG_Subjects\Expert2\Expert2_2_Trials.edf',window_size);
save('Results\Expert2\Expert2_2_eeg_electrodes.mat');

% %We delete a wrong trial
strial_Expert2_2(2) = [];
for i=1:length(eeg_electrodes_Expert2_2)
    eeg_electrodes_Expert2_2{i}.trials(2) = [];
end

%Now, we mix both cell array into a single one

eeg_electrodes_Expert2 = merge_analysis(eeg_electrodes_Expert2_1,...
    eeg_electrodes_Expert2_2);

save('Results\Expert2\Expert2_eeg_electrodes.mat');
clearvars -except window_size baseline load_data


% A partir del trial 9 comienzan los trials


%% Destroy artifacts
load Results\Expert2\Expert2_eeg_electrodes.mat
eeg_electrodes_Expert2 = destroy_artifacts(eeg_electrodes_Expert2,1,...
    length(strial_Expert2_2));
save('Results\Expert2\Expert2_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Expert1 EEG power bands for each trial
[eeg_electrodes_Expert1, strial_Expert1] = power_band_computation_window...
    ('EEG_Subjects\Expert1\Expert1_Trials.edf',window_size);
%We delete a wrong trial
strial_Expert1(21) = [];
for i=1:length(eeg_electrodes_Expert1)
    eeg_electrodes_Expert1{i}.trials(21) = [];
end

save('Results\Expert1\Expert1_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Expert1\Expert1_eeg_electrodes.mat
eeg_electrodes_Expert1 = destroy_artifacts(eeg_electrodes_Expert1,1,...
    length(strial_Expert1));
save('Results\Expert1\Expert1_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Expert6 EEG power bands for each trial with 2s window 
[eeg_electrodes_Expert6, strial_Expert6] = power_band_computation_window...
    ('EEG_Subjects\Expert6\Expert6_Trials.edf',window_size);
save('Results\Expert6\Expert6_eeg_electrodes.mat');
clearvars -except window_size baseline load_data
%% Destroy artifacts
load Results\Expert6\Expert6_eeg_electrodes.mat
eeg_electrodes_Expert6 = destroy_artifacts(eeg_electrodes_Expert6,1,...
    length(strial_Expert6));
save('Results\Expert6\Expert6_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data


%% Compute Expert7 EEG power bands for each trial with 2s window 
[eeg_electrodes_Expert7_1, strial_Expert7_1] = power_band_computation_window...
    ('EEG_Subjects\Expert7\Expert7_Trials_1.edf',window_size);
save('Results\Expert7\Expert7_eeg_electrodes.mat');

[eeg_electrodes_Expert7_2, strial_Expert7_2] = power_band_computation_window...
    ('EEG_Subjects\Expert7\Expert7_Trials_2.edf',window_size);
save('Results\Expert7\Expert7_eeg_electrodes.mat');

%Now, we mix both cell array into a single one
eeg_electrodes_Expert7 = merge_analysis(eeg_electrodes_Expert7_1,...
    eeg_electrodes_Expert7_2);

save('Results\Expert7\Expert7_eeg_electrodes.mat');
clearvars -except window_size baseline load_data

%% Destroy artifacts
load Results\Expert7\Expert7_eeg_electrodes.mat
eeg_electrodes_Expert7 = destroy_artifacts(eeg_electrodes_Expert7,1,...
    length(strial_Expert7_1)+length(strial_Expert7_2));
save('Results\Expert7\Expert7_eeg_electrodes_windows.mat');
clearvars -except window_size baseline load_data
