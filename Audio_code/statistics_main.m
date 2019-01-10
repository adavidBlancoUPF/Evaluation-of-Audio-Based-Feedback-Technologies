%% Compute Boxplots beginner & expert results

%% Beginners
load Results\Angel\Angel_results.mat
load Results\Nagore\Nagore_results.mat
load Results\Subject1\Subject1_results.mat
load Results\Subject4\Subject4_results.mat
load Results\Subject5\Subject5_results.mat
load Results\Subject6\Subject6_results.mat
load Results\Subject7\Subject7_results.mat
load Results\Subject8\Subject8_results.mat

%% Beginners with feedback

load Results\Albin\Albin_results.mat
load Results\Subject1fb\Subject1fb_results.mat
load Results\Subject2fb\Subject2fb_results.mat
load Results\Subject3fb\Subject3fb_results.mat
load Results\Subject4fb\Subject4fb_results.mat
load Results\Subject5fb\Subject5fb_results.mat
load Results\Subject6fb\Subject6fb_results.mat
load Results\Subject7fb\Subject7fb_results.mat
load Results\Subject8fb\Subject8fb_results.mat
load Results\Subject9fb\Subject9fb_results.mat


%% Experts
load Results\Alfonso\Alfonso_results.mat
load Results\Alfonso2\Alfonso2_results.mat
load Results\Rafael\Rafael_results.mat
load Results\Magdalena\Magdalena_results.mat
load Results\Expert1\Expert1_results.mat
load Results\Expert2\Expert2_results.mat
load Results\Expert3\Expert3_results.mat
load Results\Expert7\Expert7_results.mat



%% Creamos matriz pitch_instab con todos los beginners por un lado
pitch_instab_All =  [pitch_instab_Angel; ...
    pitch_instab_Subject4; pitch_instab_Subject5;  pitch_instab_Subject6;...
    pitch_instab_Subject7; pitch_instab_Subject8 ];
pitch_instab_mat = [mean(pitch_instab_All(:,(1:6)),2),...
    mean(pitch_instab_All(:,(7:12)),2),...
    mean(pitch_instab_All(:,(13:18)),2)];
% pitch_instab_whole_mat 
pitch_instab_early_data = pitch_instab_All(:,(1:6));
pitch_instab_middle_data = pitch_instab_All(:,(7:12));
pitch_instab_late_data = pitch_instab_All(:,(13:18));
pitch_instab_whole_mat = [pitch_instab_early_data(:),pitch_instab_middle_data(:),...
    pitch_instab_late_data(:)];



dyn_instab_All =  [dyn_instab_Angel; ...
    dyn_instab_Subject4; dyn_instab_Subject5;  dyn_instab_Subject6;...
    dyn_instab_Subject7; dyn_instab_Subject8 ];
dyn_instab_mat = [mean(dyn_instab_All(:,(1:6)),2),...
    mean(dyn_instab_All(:,(7:12)),2),...
    mean(dyn_instab_All(:,(13:18)),2)];
% dyn_instab_whole_mat 
dyn_instab_early_data = dyn_instab_All(:,(1:6));
dyn_instab_middle_data = dyn_instab_All(:,(7:12));
dyn_instab_late_data = dyn_instab_All(:,(13:18));
dyn_instab_whole_mat = [dyn_instab_early_data(:),dyn_instab_middle_data(:),...
    dyn_instab_late_data(:)];

aperiodicity_All =  [aperiodicity_Angel;  ...
    aperiodicity_Subject4; aperiodicity_Subject5;  aperiodicity_Subject6; ...
    aperiodicity_Subject7; aperiodicity_Subject8 ];
aperiodicity_mat = [mean(aperiodicity_All(:,(1:6)),2),...
    mean(aperiodicity_All(:,(7:12)),2),...
    mean(aperiodicity_All(:,(13:18)),2)];
% aperiodicity_whole_mat 
aperiodicity_early_data = aperiodicity_All(:,(1:6));
aperiodicity_middle_data = aperiodicity_All(:,(7:12));
aperiodicity_late_data = aperiodicity_All(:,(13:18));
aperiodicity_whole_mat = [aperiodicity_early_data(:),aperiodicity_middle_data(:),...
    aperiodicity_late_data(:)];

%% Good sounds
 good_sounds_whole_mat(:,1) = mean([pitch_instab_whole_mat(:,1),...
     aperiodicity_whole_mat(:,1), dyn_instab_whole_mat(:,1)],2);
 good_sounds_whole_mat(:,2) = mean([pitch_instab_whole_mat(:,2),...
     aperiodicity_whole_mat(:,2), dyn_instab_whole_mat(:,2)],2);
 good_sounds_whole_mat(:,3) = mean([pitch_instab_whole_mat(:,3),...
     aperiodicity_whole_mat(:,3), dyn_instab_whole_mat(:,3)],2);
 
 


%% Wilcoxon
[p_early_middle_pitch,h] = ranksum(pitch_instab_mat(:,1),pitch_instab_mat(:,2));
[p_early_late_pitch,h] = ranksum(pitch_instab_mat(:,1),pitch_instab_mat(:,3));
[p_mid_late_pitch,h] = ranksum(pitch_instab_mat(:,2),pitch_instab_mat(:,3));


[p_early_middle_dyn,h] = ranksum(dyn_instab_mat(:,1),dyn_instab_mat(:,2));
[p_early_late_dyn,h] = ranksum(dyn_instab_mat(:,1),dyn_instab_mat(:,3));
[p_mid_late_dyn,h] = ranksum(dyn_instab_mat(:,2),dyn_instab_mat(:,3));


[p_early_middle_ap,h] = ranksum(aperiodicity_mat(:,1),aperiodicity_mat(:,2));
[p_early_late_ap,h] = ranksum(aperiodicity_mat(:,1),aperiodicity_mat(:,3));
[p_mid_late_ap,h] = ranksum(aperiodicity_mat(:,2),aperiodicity_mat(:,3));


%%  T-Test
[p_early_middle_pitch,h] = ttest(pitch_instab_mat(:,1),pitch_instab_mat(:,2));
[p_early_late_pitch,h] = ttest(pitch_instab_mat(:,1),pitch_instab_mat(:,3));
[p_mid_late_pitch,h] = ttest(pitch_instab_mat(:,2),pitch_instab_mat(:,3));


[p_early_middle_dyn,h] = ttest(dyn_instab_mat(:,1),dyn_instab_mat(:,2));
[p_early_late_dyn,h] = ttest(dyn_instab_mat(:,1),dyn_instab_mat(:,3));
[p_mid_late_dyn,h] = ttest(dyn_instab_mat(:,2),dyn_instab_mat(:,3));


[p_early_middle_ap,h] = ttest(aperiodicity_mat(:,1),aperiodicity_mat(:,2));
[p_early_late_ap,h] = ttest(aperiodicity_mat(:,1),aperiodicity_mat(:,3));
[p_mid_late_ap,h] = ttest(aperiodicity_mat(:,2),aperiodicity_mat(:,3));

%% Statistics with whole matrix (without means)
[p_early_middle_pitch,h] = ttest(pitch_instab_whole_mat(:,1),pitch_instab_whole_mat(:,2));
[p_early_late_pitch,h] = ttest(pitch_instab_whole_mat(:,1),pitch_instab_whole_mat(:,3));
[p_mid_late_pitch,h] = ttest(pitch_instab_whole_mat(:,2),pitch_instab_whole_mat(:,3));


[p_early_middle_dyn,h] = ttest(dyn_instab_whole_mat(:,1),dyn_instab_whole_mat(:,2));
[p_early_late_dyn,h] = ttest(dyn_instab_whole_mat(:,1),dyn_instab_whole_mat(:,3));
[p_mid_late_dyn,h] = ttest(dyn_instab_whole_mat(:,2),dyn_instab_whole_mat(:,3));


[p_early_middle_ap,h] = ttest(aperiodicity_whole_mat(:,1),aperiodicity_whole_mat(:,2));
[p_early_late_ap,h] = ttest(aperiodicity_whole_mat(:,1),aperiodicity_whole_mat(:,3));
[p_mid_late_ap,h] = ttest(aperiodicity_whole_mat(:,2),aperiodicity_whole_mat(:,3));


[p_early_middle_gs,h] = ttest(good_sounds_whole_mat(:,1),good_sounds_whole_mat(:,2));
[p_early_late_gs,h] = ttest(good_sounds_whole_mat(:,1),good_sounds_whole_mat(:,3));
[p_mid_late_gs,h] = ttest(good_sounds_whole_mat(:,2),good_sounds_whole_mat(:,3));



[p_mid_late_gs,h_mid_late] = ttest(matrix_Beginners_All(55:108,5),matrix_Beginners_All(109:162,5));


%% Matriz con los experts por el otro
pitch_instab_experts = [ pitch_instab_Expert1;...
    pitch_instab_Expert2; pitch_instab_Expert3; pitch_instab_Rafael;...
    pitch_instab_Magdalena; pitch_instab_Alfonso; pitch_instab_Alfonso2; ...
    pitch_instab_Expert7];
pitch_instab_mat_experts = [mean(pitch_instab_experts(:,(1:6)),2),...
    mean(pitch_instab_experts(:,(7:12)),2),...
    mean(pitch_instab_experts(:,(13:18)),2)];
% pitch_instab_whole_mat 
pitch_instab_early_data_experts = pitch_instab_experts(:,(1:6));
pitch_instab_middle_data_experts = pitch_instab_experts(:,(7:12));
pitch_instab_late_data_experts = pitch_instab_experts(:,(13:18));
pitch_instab_whole_mat_experts = [pitch_instab_early_data_experts(:),...
    pitch_instab_middle_data_experts(:),...
    pitch_instab_late_data_experts(:)];



dyn_instab_experts =  [ dyn_instab_Expert1;...
    dyn_instab_Expert2; dyn_instab_Expert3; dyn_instab_Rafael;...
    dyn_instab_Magdalena; dyn_instab_Alfonso; dyn_instab_Alfonso2; ...
    dyn_instab_Expert7];
dyn_instab_mat_experts = [mean(dyn_instab_experts(:,(1:6)),2),...
    mean(dyn_instab_experts(:,(7:12)),2),...
    mean(dyn_instab_experts(:,(13:18)),2)];
% dyn_instab_whole_mat 
dyn_instab_early_data_experts = dyn_instab_experts(:,(1:6));
dyn_instab_middle_data_experts = dyn_instab_experts(:,(7:12));
dyn_instab_late_data_experts = dyn_instab_experts(:,(13:18));
dyn_instab_whole_mat_experts = [dyn_instab_early_data_experts(:),...
    dyn_instab_middle_data_experts(:),...
    dyn_instab_late_data_experts(:)];

aperiodicity_experts = [ aperiodicity_Expert1;...
    aperiodicity_Expert2; aperiodicity_Expert3; aperiodicity_Rafael;...
    aperiodicity_Magdalena; aperiodicity_Alfonso; aperiodicity_Alfonso2; ...
    aperiodicity_Expert7];

aperiodicity_mat_experts = [mean(aperiodicity_experts(:,(1:6)),2),...
    mean(aperiodicity_experts(:,(7:12)),2),...
    mean(aperiodicity_experts(:,(13:18)),2)];

% aperiodicity_whole_mat 
aperiodicity_early_data_experts = aperiodicity_experts(:,(1:6));
aperiodicity_middle_data_experts = aperiodicity_experts(:,(7:12));
aperiodicity_late_data_experts = aperiodicity_experts(:,(13:18));
aperiodicity_whole_mat_experts = [aperiodicity_early_data_experts(:),...
    aperiodicity_middle_data_experts(:),...
    aperiodicity_late_data_experts(:)];

%% Good sounds


%%
[p_early_middle_pitch_e,h] = ranksum(pitch_instab_mat_experts(:,1),pitch_instab_mat_experts(:,2));
[p_early_late_pitch_e,h] = ranksum(pitch_instab_mat_experts(:,1),pitch_instab_mat_experts(:,3));
[p_mid_late_pitch_e,h] = ranksum(pitch_instab_mat_experts(:,2),pitch_instab_mat_experts(:,3));


[p_early_middle_dyn_e,h] = ranksum(dyn_instab_mat_experts(:,1),dyn_instab_mat_experts(:,2));
[p_early_late_dyn_e,h] = ranksum(dyn_instab_mat_experts(:,1),dyn_instab_mat_experts(:,3));
[p_mid_late_dyn_e,h] = ranksum(dyn_instab_mat_experts(:,2),dyn_instab_mat_experts(:,3));


[p_early_middle_ap_e,h] = ranksum(aperiodicity_mat_experts(:,1),aperiodicity_mat_experts(:,2));
[p_early_late_ap_e,h] = ranksum(aperiodicity_mat_experts(:,1),aperiodicity_mat_experts(:,3));
[p_mid_late_ap_e,h] = ranksum(aperiodicity_mat_experts(:,2),aperiodicity_mat_experts(:,3));

%% T-Test normal

[p_early_middle_pitch_e,h] = ttest(pitch_instab_mat_experts(:,1),pitch_instab_mat_experts(:,2));
[p_early_late_pitch_e,h] = ttest(pitch_instab_mat_experts(:,1),pitch_instab_mat_experts(:,3));
[p_mid_late_pitch_e,h] = ttest(pitch_instab_mat_experts(:,2),pitch_instab_mat_experts(:,3));


[p_early_middle_dyn_e,h] = ttest(dyn_instab_mat_experts(:,1),dyn_instab_mat_experts(:,2));
[p_early_late_dyn_e,h] = ttest(dyn_instab_mat_experts(:,1),dyn_instab_mat_experts(:,3));
[p_mid_late_dyn_e,h] = ttest(dyn_instab_mat_experts(:,2),dyn_instab_mat_experts(:,3));


[p_early_middle_ap_e,h] = ttest(aperiodicity_mat_experts(:,1),aperiodicity_mat_experts(:,2));
[p_early_late_ap_e,h] = ttest(aperiodicity_mat_experts(:,1),aperiodicity_mat_experts(:,3));
[p_mid_late_ap_e,h] = ttest(aperiodicity_mat_experts(:,2),aperiodicity_mat_experts(:,3));



%% T-test with whole MATRIX EXPERTS


[p_early_middle_pitch_e,h] = ttest(pitch_instab_whole_mat_experts(:,1),pitch_instab_whole_mat_experts(:,2));
[p_early_late_pitch_e,h] = ttest(pitch_instab_whole_mat_experts(:,1),pitch_instab_whole_mat_experts(:,3));
[p_mid_late_pitch_e,h] = ttest(pitch_instab_whole_mat_experts(:,2),pitch_instab_whole_mat_experts(:,3));


[p_early_middle_dyn_e,h] = ttest(dyn_instab_whole_mat_experts(:,1),dyn_instab_whole_mat_experts(:,2));
[p_early_late_dyn_e,h] = ttest(dyn_instab_whole_mat_experts(:,1),dyn_instab_whole_mat_experts(:,3));
[p_mid_late_dyn_e,h] = ttest(dyn_instab_whole_mat_experts(:,2),dyn_instab_whole_mat_experts(:,3));


[p_early_middle_ap_e,h] = ttest(aperiodicity_whole_mat_experts(:,1),aperiodicity_whole_mat_experts(:,2));
[p_early_late_ap_e,h] = ttest(aperiodicity_whole_mat_experts(:,1),aperiodicity_whole_mat_experts(:,3));
[p_mid_late_ap_e,h] = ttest(aperiodicity_whole_mat_experts(:,2),aperiodicity_whole_mat_experts(:,3));


[p_early_middle_gs_e,h] = ttest(good_sounds_whole_mat_experts(:,1),good_sounds_whole_mat_experts(:,2));
[p_early_late_gs_e,h] = ttest(good_sounds_whole_mat_experts(:,1),good_sounds_whole_mat_experts(:,3));
[p_mid_late_gs_e,h] = ttest(good_sounds_whole_mat_experts(:,2),good_sounds_whole_mat_experts(:,3));



%% Plots
figure
label = {'Early','Middle','Late'};
boxplot(pitch_instab_mat,label);
xlabel('Trials during session')
ylabel('Score');
title('Pitch Instability')
hold on
boxplot(pitch_instab_mat_experts,label,'colors','g');
ylim([0,0.4])



figure
label = {'Early','Middle','Late'};
boxplot(dyn_instab_whole_mat);
xlabel('Trials during session')
ylabel('Score');
title('Dynamic Instability')
hold on
boxplot(dyn_instab_mat_experts,label,'colors','g');
ylim([1,5])


figure
boxplot(aperiodicity_whole_mat);
xlabel('Trials during session')
ylabel('Score');
title('Aperiodicity')
hold on
boxplot(aperiodicity_mat_experts,label,'colors','g');
ylim([0,0.035])





%% Compute Boxplots beginner & beginner feedback results

load Results\Albin\Albin_results.mat
load Results\Subject1fb\Subject1fb_results.mat
load Results\Subject2fb\Subject2fb_results.mat
load Results\Subject3fb\Subject3fb_results.mat
load Results\Subject5fb\Subject5fb_results.mat
load Results\Subject6fb\Subject6fb_results.mat
load Results\Subject7fb\Subject7fb_results.mat
load Results\Subject8fb\Subject8fb_results.mat
load Results\Subject9fb\Subject9fb_results.mat


%% Matrix with all beginners with feedback
pitch_instab_feedback =  [pitch_instab_Albin; pitch_instab_Subject1fb; ...
    pitch_instab_Subject2fb; pitch_instab_Subject3fb; ...
      pitch_instab_Subject5fb; ...
    pitch_instab_Subject6fb; pitch_instab_Subject7fb; ...
    pitch_instab_Subject8fb; pitch_instab_Subject9fb];
pitch_instab_mat_feedback = [mean(pitch_instab_feedback(:,(1:7)),2),...
    mean(pitch_instab_feedback(:,(8:14)),2),...
    mean(pitch_instab_feedback(:,(15:21)),2)];
% pitch_instab_whole_mat 
pitch_instab_early_data_feedback = pitch_instab_feedback(:,(1:7));
pitch_instab_middle_data_feedback = pitch_instab_feedback(:,(8:14));
pitch_instab_late_data_feedback = pitch_instab_feedback(:,(15:21));
pitch_instab_whole_mat_feedback = [pitch_instab_early_data_feedback(:),...
    pitch_instab_middle_data_feedback(:),...
    pitch_instab_late_data_feedback(:)];


dyn_instab_feedback =  [dyn_instab_Albin; dyn_instab_Subject1fb;...
    dyn_instab_Subject2fb; dyn_instab_Subject3fb; ...
      dyn_instab_Subject5fb; ...
    dyn_instab_Subject6fb; dyn_instab_Subject7fb; ...
    dyn_instab_Subject8fb; dyn_instab_Subject9fb];
dyn_instab_mat_feedback = [mean(dyn_instab_feedback(:,(1:7)),2),...
    mean(dyn_instab_feedback(:,(8:14)),2),...
    mean(dyn_instab_feedback(:,(15:21)),2)];
%dyn_instab_whole_mat
dyn_instab_early_data_feedback = dyn_instab_feedback(:,(1:7));
dyn_instab_middle_data_feedback = dyn_instab_feedback(:,(8:14));
dyn_instab_late_data_feedback = dyn_instab_feedback(:,(15:21));
dyn_instab_whole_mat_feedback = [dyn_instab_early_data_feedback(:),...
    dyn_instab_middle_data_feedback(:),...
    dyn_instab_late_data_feedback(:)];


aperiodicity_feedback =  [aperiodicity_Albin; aperiodicity_Subject1fb; ...
    aperiodicity_Subject2fb; aperiodicity_Subject3fb; ...
      aperiodicity_Subject5fb; ...
    aperiodicity_Subject6fb; aperiodicity_Subject7fb; ...
    aperiodicity_Subject8fb; aperiodicity_Subject9fb];
aperiodicity_mat_feedback = [mean(aperiodicity_feedback(:,(1:7)),2),...
    mean(aperiodicity_feedback(:,(8:14)),2),...
    mean(aperiodicity_feedback(:,(15:21)),2)];
%aperiodicity_whole_mat
aperiodicity_early_data_feedback = aperiodicity_feedback(:,(1:7));
aperiodicity_middle_data_feedback = aperiodicity_feedback(:,(8:14));
aperiodicity_late_data_feedback = aperiodicity_feedback(:,(15:21));
aperiodicity_whole_mat_feedback = [aperiodicity_early_data_feedback(:),...
    aperiodicity_middle_data_feedback(:),...
    aperiodicity_late_data_feedback(:)];



%% Good sounds whole matrix

 good_sounds_whole_mat_feedback(:,1) = mean([pitch_instab_whole_mat_feedback(:,1),...
     aperiodicity_whole_mat_feedback(:,1), dyn_instab_whole_mat_feedback(:,1)],2);
 good_sounds_whole_mat_feedback(:,2) = mean([pitch_instab_whole_mat_feedback(:,2),...
     aperiodicity_whole_mat_feedback(:,2), dyn_instab_whole_mat_feedback(:,2)],2);
 good_sounds_whole_mat_feedback(:,3) = mean([pitch_instab_whole_mat_feedback(:,3),...
     aperiodicity_whole_mat_feedback(:,3), dyn_instab_whole_mat_feedback(:,3)],2);
 
 
 
%%  T-Test
[p_early_middle_pitch,h] = ttest(pitch_instab_mat_feedback(:,1),pitch_instab_mat_feedback(:,2));
[p_early_late_pitch,h] = ttest(pitch_instab_mat_feedback(:,1),pitch_instab_mat_feedback(:,3));
[p_mid_late_pitch,h] = ttest(pitch_instab_mat_feedback(:,2),pitch_instab_mat_feedback(:,3));


[p_early_middle_dyn,h] = ttest(dyn_instab_mat_feedback(:,1),dyn_instab_mat_feedback(:,2));
[p_early_late_dyn,h] = ttest(dyn_instab_mat_feedback(:,1),dyn_instab_mat_feedback(:,3));
[p_mid_late_dyn,h] = ttest(dyn_instab_mat_feedback(:,2),dyn_instab_mat_feedback(:,3));


[p_early_middle_ap,h] = ttest(aperiodicity_mat_feedback(:,1),aperiodicity_mat_feedback(:,2));
[p_early_late_ap,h] = ttest(aperiodicity_mat_feedback(:,1),aperiodicity_mat_feedback(:,3));
[p_mid_late_ap,h] = ttest(aperiodicity_mat_feedback(:,2),aperiodicity_mat_feedback(:,3));

%% Statistics with whole matrix (without means)
[p_early_middle_pitch,h] = ttest(pitch_instab_whole_mat_feedback(:,1),pitch_instab_whole_mat_feedback(:,2));
[p_early_late_pitch,h] = ttest(pitch_instab_whole_mat_feedback(:,1),pitch_instab_whole_mat_feedback(:,3));
[p_mid_late_pitch,h] = ttest(pitch_instab_whole_mat_feedback(:,2),pitch_instab_whole_mat_feedback(:,3));


[p_early_middle_dyn,h] = ttest(dyn_instab_whole_mat_feedback(:,1),dyn_instab_whole_mat_feedback(:,2));
[p_early_late_dyn,h] = ttest(dyn_instab_whole_mat_feedback(:,1),dyn_instab_whole_mat_feedback(:,3));
[p_mid_late_dyn,h] = ttest(dyn_instab_whole_mat_feedback(:,2),dyn_instab_whole_mat_feedback(:,3));


[p_early_middle_ap,h] = ttest(aperiodicity_whole_mat_feedback(:,1),aperiodicity_whole_mat_feedback(:,2));
[p_early_late_ap,h] = ttest(aperiodicity_whole_mat_feedback(:,1),aperiodicity_whole_mat_feedback(:,3));
[p_mid_late_ap,h] = ttest(aperiodicity_whole_mat_feedback(:,2),aperiodicity_whole_mat_feedback(:,3));

[p_early_middle_gs,h_early_middle_gs] = ttest(good_sounds_whole_mat_feedback(:,1),good_sounds_whole_mat_feedback(:,2));
[p_early_late_gs,h_early_late_gs] = ttest(good_sounds_whole_mat_feedback(:,1),good_sounds_whole_mat_feedback(:,3));
[p_mid_late_gs,h_mid_late] = ttest(good_sounds_whole_mat_feedback(:,2),good_sounds_whole_mat_feedback(:,3));


%% Plots
figure
label = {'Early','Middle','Late'};
boxplot(pitch_instab_mat,label);
xlabel('Trials during session')
ylabel('Score');
title('Pitch Instability')
hold on
boxplot(pitch_instab_mat_feedback,label,'colors','g');
ylim([0,0.8])



figure
label = {'Early','Middle','Late'};
boxplot(dyn_instab_mat);
xlabel('Trials during session')
ylabel('Score');
title('Dynamic Instability')
hold on
boxplot(dyn_instab_mat_feedback,label,'colors','g');
ylim([1,10])


figure
boxplot(aperiodicity_mat);
xlabel('Trials during session')
ylabel('Score');
title('Aperiodicity')
hold on
boxplot(aperiodicity_mat_feedback,label,'colors','g');
ylim([0,0.060])



figure
boxplot(good_sounds_whole_mat);
xlabel('Trials during session')
ylabel('Score');
title('Sound Quality Descriptor')
hold on
boxplot(good_sounds_whole_mat_feedback,label,'colors','g');
%ylim([0,0.060])


figure
boxplot(gs_everything);
xlabel('Trials during session')
ylabel('Score');
title('Sound Quality Descriptor')
hold on
boxplot(gs_experts,'colors','r');
ylim([0.5,3])




% 
% corr(pitch_instab_Angel(1:12)',[1:12]')
% corr(dyn_instab_Angel(1:12)',[1:12]')
% corr(aperiodicity_Angel(1:12)',[1:12]')
% 
% corr(pitch_instab_Subject4(1:12)',[1:12]')
% corr(dyn_instab_Subject4(1:12)',[1:12]')
% corr(aperiodicity_Subject4(1:12)',[1:12]')
% 
% corr(pitch_instab_Subject5(1:12)',[1:12]')
% corr(dyn_instab_Subject5(1:12)',[1:12]')
% corr(aperiodicity_Subject5(1:12)',[1:12]')
% 
% corr(pitch_instab_Subject6(1:12)',[1:12]')
% corr(dyn_instab_Subject6(1:12)',[1:12]')
% corr(aperiodicity_Subject6(1:12)',[1:12]')
% 
% corr(pitch_instab_Subject7(1:12)',[1:12]')
% corr(dyn_instab_Subject7(1:12)',[1:12]')
% corr(aperiodicity_Subject7(1:12)',[1:12]')
% 
% corr(pitch_instab_Subject8(1:12)',[1:12]')
% corr(dyn_instab_Subject8(1:12)',[1:12]')
% corr(aperiodicity_Subject8(1:12)',[1:12]')