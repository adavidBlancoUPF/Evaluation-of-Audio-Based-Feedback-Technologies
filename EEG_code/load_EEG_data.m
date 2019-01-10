
%% Parameters

window_size = [];  %Size of the window (if [] takes whole trial)

baseline = 1;  %if baseline = 1->Eyes open baseline 
               %if baseline = 0->Arm Movement
               
load_data = 1;  %load_data = 1->load data from EDF files.



if load_data
    %% Create folder where the results are going to be stored
    create_Results_folder
    
    %% Load beginners
    load_beginners_EEG

    %% Load Beginners with feedback
    load_feedback_EEG

    %% Load Experts
    load_experts_EEG
end
