 
%Create matrix mixing both subjects with feedback and without feedback and
%comparing them with experts

%Code for arff file:
%1: Beginners_early
%2: Beginners_middle
%3: Beginners_late

%Load Data
%new_statistics_main

ap    = aperiodicity_whole_mat(:);
dyn   = dyn_instab_whole_mat(:);
pitch = pitch_instab_whole_mat(:);
%gs    = good_sounds_whole_mat(:);

matrix = horzcat(dyn,pitch,ap);
%matrix = gs;

code_col = vertcat(ones(size(aperiodicity_whole_mat,1),1),...
    ones(size(aperiodicity_whole_mat,1),1)*1,...
    ones(size(aperiodicity_whole_mat,1),1)*1);

matrix = horzcat(matrix,code_col);


%% Subjects with feedback as normal subjects

ap_f    = aperiodicity_whole_mat_feedback(:);
dyn_f   = dyn_instab_whole_mat_feedback(:);
pitch_f = pitch_instab_whole_mat_feedback(:);
%gs_f    = good_sounds_whole_mat_feedback(:);

matrix_feedback = horzcat(dyn_f,pitch_f,ap_f);
%matrix_feedback = gs_f;

code_col_f = vertcat(ones(size(aperiodicity_whole_mat_feedback,1),1)*1,...
    ones(size(aperiodicity_whole_mat_feedback,1),1)*1,...
    ones(size(aperiodicity_whole_mat_feedback,1),1)*1);

matrix_feedback = horzcat(matrix_feedback,code_col_f);

matrix = vertcat(matrix,matrix_feedback);


%% Experts

ap_e    = aperiodicity_whole_mat_experts(:);
dyn_e   = dyn_instab_whole_mat_experts(:);
pitch_e = pitch_instab_whole_mat_experts(:);
%gs_e    = good_sounds_whole_mat_experts(:);

matrix_experts = horzcat(dyn_e,pitch_e,ap_e);
%matrix_experts = gs_e;

code_col_e = vertcat(ones(size(aperiodicity_whole_mat_experts,1),1)*2,...
    ones(size(aperiodicity_whole_mat_experts,1),1)*2,...
    ones(size(aperiodicity_whole_mat_experts,1),1)*2);

matrix_experts = horzcat(matrix_experts,code_col_e);

matrix = vertcat(matrix,matrix_experts);

