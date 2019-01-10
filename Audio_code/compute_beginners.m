%% Beginners

load Results\Subject1\Subject1_results.mat
load Results\Subject2\Subject2_results.mat
load Results\Subject3\Subject3_results.mat
load Results\Subject4\Subject4_results.mat
load Results\Subject5\Subject5_results.mat
load Results\Subject6\Subject6_results.mat
load Results\Subject7\Subject7_results.mat
load Results\Subject8\Subject8_results.mat
load Results\Subject9\Subject9_results.mat

%% Extract features from each subject and put nan on those mising

pitch_instab_Subject2 = [pitch_instab_Subject2, nan, nan];
pitch_instab_Subject9 = [pitch_instab_Subject9, nan];
dyn_instab_Subject2 = [dyn_instab_Subject2, nan, nan];
dyn_instab_Subject9 = [dyn_instab_Subject9, nan];
aperiodicity_Subject2 = [aperiodicity_Subject2, nan, nan];
aperiodicity_Subject9 = [aperiodicity_Subject9, nan];

pitch_instab_All =  [pitch_instab_Subject3(); ...
    pitch_instab_Subject2;...
    pitch_instab_Subject9;...
    pitch_instab_Subject1();...
    pitch_instab_Subject4(); pitch_instab_Subject5(); ...
    pitch_instab_Subject6();...
    pitch_instab_Subject7(); pitch_instab_Subject8()];
pitch_instab_mat = [mean(pitch_instab_All(:,(1:6)),2),...
    mean(pitch_instab_All(:,(7:12)),2),...
    mean(pitch_instab_All(:,(13:18)),2)];



dyn_instab_All =  [dyn_instab_Subject3();...
    dyn_instab_Subject2();...
    dyn_instab_Subject9;...
    dyn_instab_Subject1;...
    dyn_instab_Subject4(); dyn_instab_Subject5(); ...
    dyn_instab_Subject6();...
    dyn_instab_Subject7(); dyn_instab_Subject8()];
dyn_instab_mat = [mean(dyn_instab_All(:,(1:6)),2),...
    mean(dyn_instab_All(:,(7:12)),2),...
    mean(dyn_instab_All(:,(13:18)),2)];



aperiodicity_All =  [aperiodicity_Subject3();...
    aperiodicity_Subject2();...
    aperiodicity_Subject9;...
    aperiodicity_Subject1;...
    aperiodicity_Subject4(); aperiodicity_Subject5();...
    aperiodicity_Subject6(); ...
    aperiodicity_Subject7(); aperiodicity_Subject8()];
aperiodicity_mat = [mean(aperiodicity_All(:,(1:6)),2),...
    mean(aperiodicity_All(:,(7:12)),2),...
    mean(aperiodicity_All(:,(13:18)),2)];



%% Normalize and compute good_sounds descriptor
% 
%Normalize
if ~bol_compare_experts_vs_beginners
[aperiodicity_All, dyn_instab_All, pitch_instab_All] = ...
    normalize(aperiodicity_All, dyn_instab_All, pitch_instab_All);
end

z = cat(3,aperiodicity_All, dyn_instab_All, pitch_instab_All);
gs_All = mean(z,3);


%% Beginners whole math

% pitch_instab_whole_mat 
pitch_instab_early_data = pitch_instab_All(:,(1:7));
pitch_instab_middle_data = pitch_instab_All(:,(8:14));
pitch_instab_late_data = pitch_instab_All(:,(15:end));
pitch_instab_whole_mat = [pitch_instab_early_data(:),pitch_instab_middle_data(:),...
    pitch_instab_late_data(:)];

% dyn_instab_whole_mat 
dyn_instab_early_data = dyn_instab_All(:,(1:7));
dyn_instab_middle_data = dyn_instab_All(:,(8:14));
dyn_instab_late_data = dyn_instab_All(:,(15:end));
dyn_instab_whole_mat = [dyn_instab_early_data(:),dyn_instab_middle_data(:),...
    dyn_instab_late_data(:)];

% aperiodicity_whole_mat 
aperiodicity_early_data = aperiodicity_All(:,(1:7));
aperiodicity_middle_data = aperiodicity_All(:,(8:14));
aperiodicity_late_data = aperiodicity_All(:,(15:end));
aperiodicity_whole_mat = [aperiodicity_early_data(:),aperiodicity_middle_data(:),...
    aperiodicity_late_data(:)];

% good sounds_whole_mat
gs_early_data = gs_All(:,(1:7));
gs_middle_data = gs_All(:,(8:14));
gs_late_data = gs_All(:,(15:end));
good_sounds_whole_mat = [gs_early_data(:),gs_middle_data(:),...
    gs_late_data(:)];