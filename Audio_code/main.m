

%% Load Values

load_data = 0;


if load_data
    %% load beginners
    load_beginners
    
    %% load feedback
    load_feedback
    
    %% load experts
    load_experts
end
   

%% Compute values 

compute_values = 1;

show_results = 0;

bol_compare_experts_vs_beginners = 1;
%If we want to compare beginners without feedback with beginners with
%feedback we have to normalize the data of each one of them separately in
%order to see relative differences not absolute.
% If we want to compare beginners with experts we need to normalize
% everything together at the end, otherwise we will not appreciate the
% absolute differences between beginners and experts.


if compute_values
    % compute_beginners
    compute_beginners
    
    % compute feedback
    compute_feedback
    
    % compute_experts
    compute_experts
    
    if bol_compare_experts_vs_beginners
        % Create matrix weka
        create_matrix_weka

        % compute Audio Instability
        compute_new_audio_feature
        
        if show_results
            graphs
        end
    end
end


clearvars -except dyn_instab_beginners dyn_instab_feedback dyn_instab_experts...
    aperiodicity_feedback aperiodicity_beginners aperiodicity_experts...
    pitch_instab_beginners pitch_instab_feedback pitch_instab_experts...
    pi_early_beg pi_middle_beg pi_late_beg...
    pi_early_feedback pi_middle_feedback pi_late_feedback...
    pi_early_experts pi_middle_experts pi_late_experts...
    dyn_early_beg dyn_middle_beg dyn_late_beg...
    dyn_early_feedback dyn_middle_feedback dyn_late_feedback...
    dyn_early_experts dyn_middle_experts dyn_late_experts...
    ap_early_beg ap_middle_beg ap_late_beg...
    ap_early_feedback ap_middle_feedback ap_late_feedback...
    ap_early_experts ap_middle_experts ap_late_experts...
    

