%% Experts
%load Results\Alfonso\Alfonso_results.mat
load Results\Expert4\Expert4_results.mat
load Results\Expert5\Expert5_results.mat
load Results\Expert6\Expert6_results.mat
load Results\Expert1\Expert1_results.mat
load Results\Expert2\Expert2_results.mat
load Results\Expert3\Expert3_results.mat
load Results\Expert7\Expert7_results.mat



%% Matriz con los experts por el otro
pitch_instab_experts = [ pitch_instab_Expert1;...
    pitch_instab_Expert2; pitch_instab_Expert3; pitch_instab_Expert5;...
    pitch_instab_Expert6; pitch_instab_Expert4; ...
    pitch_instab_Expert7];
pitch_instab_mat_experts = [mean(pitch_instab_experts(:,(1:6)),2),...
    mean(pitch_instab_experts(:,(7:12)),2),...
    mean(pitch_instab_experts(:,(13:18)),2)];



dyn_instab_experts =  [ dyn_instab_Expert1;...
    dyn_instab_Expert2; dyn_instab_Expert3; dyn_instab_Expert5;...
    dyn_instab_Expert6; dyn_instab_Expert4; ...
    dyn_instab_Expert7];
dyn_instab_mat_experts = [mean(dyn_instab_experts(:,(1:6)),2),...
    mean(dyn_instab_experts(:,(7:12)),2),...
    mean(dyn_instab_experts(:,(13:18)),2)];


aperiodicity_experts = [ aperiodicity_Expert1;...
    aperiodicity_Expert2; aperiodicity_Expert3; aperiodicity_Expert5;...
    aperiodicity_Expert6;  aperiodicity_Expert4; ...
    aperiodicity_Expert7];

aperiodicity_mat_experts = [mean(aperiodicity_experts(:,(1:6)),2),...
    mean(aperiodicity_experts(:,(7:12)),2),...
    mean(aperiodicity_experts(:,(13:18)),2)];





%% Normalize and compute good_sounds experts descriptor

%Normalize
if ~bol_compare_experts_vs_beginners
    [aperiodicity_experts, dyn_instab_experts, pitch_instab_experts] = ...
        normalize(aperiodicity_experts, dyn_instab_experts, pitch_instab_experts);
end
z = cat(3,aperiodicity_experts, dyn_instab_experts, pitch_instab_experts);
gs_experts = mean(z,3);

%% Experts whole matrix

% pitch_instab_whole_mat 
pitch_instab_early_data_experts = pitch_instab_experts(:,(1:6));
pitch_instab_middle_data_experts = pitch_instab_experts(:,(7:12));
pitch_instab_late_data_experts = pitch_instab_experts(:,(13:18));
pitch_instab_whole_mat_experts = [pitch_instab_early_data_experts(:),...
    pitch_instab_middle_data_experts(:),...
    pitch_instab_late_data_experts(:)];


% dyn_instab_whole_mat 
dyn_instab_early_data_experts = dyn_instab_experts(:,(1:6));
dyn_instab_middle_data_experts = dyn_instab_experts(:,(7:12));
dyn_instab_late_data_experts = dyn_instab_experts(:,(13:18));
dyn_instab_whole_mat_experts = [dyn_instab_early_data_experts(:),...
    dyn_instab_middle_data_experts(:),...
    dyn_instab_late_data_experts(:)];

% aperiodicity_whole_mat 
aperiodicity_early_data_experts = aperiodicity_experts(:,(1:6));
aperiodicity_middle_data_experts = aperiodicity_experts(:,(7:12));
aperiodicity_late_data_experts = aperiodicity_experts(:,(13:18));
aperiodicity_whole_mat_experts = [aperiodicity_early_data_experts(:),...
    aperiodicity_middle_data_experts(:),...
    aperiodicity_late_data_experts(:)];


% good sounds_whole_mat
gs_early_data_experts = gs_experts(:,(1:6));
gs_middle_data_experts = gs_experts(:,(7:12));
gs_late_data_experts = gs_experts(:,(13:18));
good_sounds_whole_mat_experts = [gs_early_data_experts(:),...
    gs_middle_data_experts(:),...
    gs_late_data_experts(:)];