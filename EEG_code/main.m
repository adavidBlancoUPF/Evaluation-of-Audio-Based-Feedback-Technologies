

%% Load Values

load_data = 1;

set(0,'DefaultFigureVisible','off');
if load_data
    %% load EEG data
    load_EEG_data
    
    %% load beginners
    load_beginners
    
    %% load feedback
    load_feedback
    
    %% load experts
    load_experts
    
    %% Save Data   
    save('experts','eegdata_experts')
    save('bf','eegdata_bf')
    save('bnf','eegdata_bnf')

    %% Compute Power Spectral Density
    PSD_computation
end

%% Compute values 
set(0,'DefaultFigureVisible','on');

compute_values = 1;

show_results = 1;


if compute_values
    %% Compute power bands (Theta, Alpha, Beta & Gamma)
    power_band_computation
    %% Compute differences between beginners and experts during the baseline
    EEG_beginners_vs_experts_analysis
    %% Compute ERDs among blocks (using baseline as a reference)
    ERD_computation
    %Compute clusters
    clusters
    %Compute weka matrix
    weka_periods      
end
%Clear variables
clearvars -except eeg_electrodes* bf_ERD bnf_ERD experts_ERD

% Variables:
% eeg_electrodes_* type of variables are cell arrays with the raw data recorded
% for each electrode
% in bf_ERD bnf_ERD and experts_ERD are 4 dimensions matrices:
%   The first dimension: Each participant of that group
%   The second dimension: Each electrode
%   The third dimension: Each frequency band (Theta, Alpha, Beta, Gamma)
%   The fourth dimension: Each block (Early, Middle, Late)