

Frontal_bf_avg = nanmean(Frontal_bf(:,:,1:5),3);
Frontal_bnf_avg = nanmean(Frontal_bnf(:,:,1:5),3);
Frontal_experts_avg = nanmean(Frontal_experts(:,:,1:5),3);

frontal_beg = [Frontal_bf_avg, Frontal_bnf_avg];
frontal_exp = NaN(4,length(frontal_beg));
frontal_exp(:,1:length(Frontal_experts_avg)) = Frontal_experts_avg(:,:);

MidFrontal_bf_avg = nanmean(MidFrontal_bf(:,:,1:5),3);
MidFrontal_bnf_avg = nanmean(MidFrontal_bnf(:,:,1:5),3);
MidFrontal_experts_avg = nanmean(MidFrontal_experts(:,:,1:5),3);

MidFrontal_beg = NaN(4,length(frontal_beg));
MidFrontal_beg(:,1:(length(MidFrontal_bf_avg)+length(MidFrontal_bnf_avg))) = [MidFrontal_bf_avg, MidFrontal_bnf_avg];
MidFrontal_exp = NaN(4,length(frontal_beg));
MidFrontal_exp(:,1:length(MidFrontal_experts_avg)) = MidFrontal_experts_avg(:,:);



RightFrontal_bf_avg = nanmean(RightFrontal_bf(:,:,1:5),3);
RightFrontal_bnf_avg = nanmean(RightFrontal_bnf(:,:,1:5),3);
RightFrontal_experts_avg = nanmean(RightFrontal_experts(:,:,1:5),3);

RightFrontal_beg = NaN(4,length(frontal_beg));
RightFrontal_beg(:,1:(length(RightFrontal_bf_avg)+length(RightFrontal_bnf_avg))) = [RightFrontal_bf_avg, RightFrontal_bnf_avg];
RightFrontal_exp = NaN(4,length(frontal_beg));
RightFrontal_exp(:,1:length(RightFrontal_experts_avg)) = RightFrontal_experts_avg(:,:);



LeftFrontal_bf_avg = nanmean(LeftFrontal_bf(:,:,1:5),3);
LeftFrontal_bnf_avg = nanmean(LeftFrontal_bnf(:,:,1:5),3);
LeftFrontal_experts_avg = nanmean(LeftFrontal_experts(:,:,1:5),3);

LeftFrontal_beg = NaN(4,length(frontal_beg));
LeftFrontal_beg(:,1:(length(LeftFrontal_bf_avg)+length(LeftFrontal_bnf_avg))) = [LeftFrontal_bf_avg, LeftFrontal_bnf_avg];
LeftFrontal_exp = NaN(4,length(frontal_beg));
LeftFrontal_exp(:,1:length(LeftFrontal_experts_avg)) = LeftFrontal_experts_avg(:,:);

Posterior_bf_avg = nanmean(Posterior_bf(:,:,1:5),3);
Posterior_bnf_avg = nanmean(Posterior_bnf(:,:,1:5),3);
Posterior_experts_avg = nanmean(Posterior_experts(:,:,1:5),3);

Posterior_beg = NaN(4,length(frontal_beg));
Posterior_beg(:,1:(length(Posterior_bf_avg)+length(Posterior_bnf_avg))) = [Posterior_bf_avg, Posterior_bnf_avg];
Posterior_exp = NaN(4,length(frontal_beg));
Posterior_exp(:,1:length(Posterior_experts_avg)) = Posterior_experts_avg(:,:);


RightPosterior_bf_avg = nanmean(RightPosterior_bf(:,:,1:5),3);
RightPosterior_bnf_avg = nanmean(RightPosterior_bnf(:,:,1:5),3);
RightPosterior_experts_avg = nanmean(RightPosterior_experts(:,:,1:5),3);

RightPosterior_beg = NaN(4,length(frontal_beg));
RightPosterior_beg(:,1:(length(RightPosterior_bf_avg)+length(RightPosterior_bnf_avg))) = [RightPosterior_bf_avg, RightPosterior_bnf_avg];
RightPosterior_exp = NaN(4,length(frontal_beg));
RightPosterior_exp(:,1:length(RightPosterior_experts_avg)) = RightPosterior_experts_avg(:,:);

LeftPosterior_bf_avg = nanmean(LeftPosterior_bf(:,:,1:5),3);
LeftPosterior_bnf_avg = nanmean(LeftPosterior_bnf(:,:,1:5),3);
LeftPosterior_experts_avg = nanmean(LeftPosterior_experts(:,:,1:5),3);

LeftPosterior_beg = NaN(4,length(frontal_beg));
LeftPosterior_beg(:,1:(length(LeftPosterior_bf_avg)+length(LeftPosterior_bnf_avg))) = [LeftPosterior_bf_avg, LeftPosterior_bnf_avg];
LeftPosterior_exp = NaN(4,length(frontal_beg));
LeftPosterior_exp(:,1:length(LeftPosterior_experts_avg)) = LeftPosterior_experts_avg(:,:);

Occipital_bf_avg = nanmean(Occipital_bf(:,:,1:5),3);
Occipital_bnf_avg = nanmean(Occipital_bnf(:,:,1:5),3);
Occipital_experts_avg = nanmean(Occipital_experts(:,:,1:5),3);



Occipital_beg = NaN(4,length(frontal_beg));
Occipital_beg(:,1:(length(Occipital_bf_avg)+length(Occipital_bnf_avg))) = [Occipital_bf_avg, Occipital_bnf_avg];
Occipital_exp = NaN(4,length(frontal_beg));
Occipital_exp(:,1:length(Occipital_experts_avg)) = Occipital_experts_avg(:,:);

RightParietal_bf_avg = nanmean(RightParietal_bf(:,:,1:5),3);
RightParietal_bnf_avg = nanmean(RightParietal_bnf(:,:,1:5),3);
RightParietal_experts_avg = nanmean(RightParietal_experts(:,:,1:5),3);

RightParietal_beg = NaN(4,length(frontal_beg));
RightParietal_beg(:,1:(length(RightParietal_bf_avg)+length(RightParietal_bnf_avg))) = [RightParietal_bf_avg, RightParietal_bnf_avg];
RightParietal_exp = NaN(4,length(frontal_beg));
RightParietal_exp(:,1:length(RightParietal_experts_avg)) = RightParietal_experts_avg(:,:);



LeftParietal_bf_avg = nanmean(LeftParietal_bf(:,:,1:5),3);
LeftParietal_bnf_avg = nanmean(LeftParietal_bnf(:,:,1:5),3);
LeftParietal_experts_avg = nanmean(LeftParietal_experts(:,:,1:5),3);

LeftParietal_beg = NaN(4,length(frontal_beg));
LeftParietal_beg(:,1:(length(LeftParietal_bf_avg)+length(LeftParietal_bnf_avg))) = [LeftParietal_bf_avg, LeftParietal_bnf_avg];
LeftParietal_exp = NaN(4,length(frontal_beg));
LeftParietal_exp(:,1:length(LeftParietal_experts_avg)) = LeftParietal_experts_avg(:,:);


Temporal_bf_avg = nanmean(Temporal_bf(:,:,1:5),3);
Temporal_bnf_avg = nanmean(Temporal_bnf(:,:,1:5),3);
Temporal_experts_avg = nanmean(Temporal_experts(:,:,1:5),3);

Temporal_beg = NaN(4,length(frontal_beg));
Temporal_beg(:,1:(length(Temporal_bf_avg)+length(Temporal_bnf_avg))) = [Temporal_bf_avg, Temporal_bnf_avg];
Temporal_exp = NaN(4,length(frontal_beg));
Temporal_exp(:,1:length(Temporal_experts_avg)) = Temporal_experts_avg(:,:);


LeftTemporal_bf_avg = nanmean(LeftTemporal_bf(:,:,1:5),3);
LeftTemporal_bnf_avg = nanmean(LeftTemporal_bnf(:,:,1:5),3);
LeftTemporal_experts_avg = nanmean(LeftTemporal_experts(:,:,1:5),3);

LeftTemporal_beg = NaN(4,length(frontal_beg));
LeftTemporal_beg(:,1:(length(LeftTemporal_bf_avg)+length(LeftTemporal_bnf_avg))) = [LeftTemporal_bf_avg, LeftTemporal_bnf_avg];
LeftTemporal_exp = NaN(4,length(frontal_beg));
LeftTemporal_exp(:,1:length(LeftTemporal_experts_avg)) = LeftTemporal_experts_avg(:,:);

RightTemporal_bf_avg = nanmean(RightTemporal_bf(:,:,1:5),3);
RightTemporal_bnf_avg = nanmean(RightTemporal_bnf(:,:,1:5),3);
RightTemporal_experts_avg = nanmean(RightTemporal_experts(:,:,1:5),3);

RightTemporal_beg = NaN(4,length(frontal_beg));
RightTemporal_beg(:,1:(length(RightTemporal_bf_avg)+length(RightTemporal_bnf_avg))) = [RightTemporal_bf_avg, RightTemporal_bnf_avg];
RightTemporal_exp = NaN(4,length(frontal_beg));
RightTemporal_exp(:,1:length(RightTemporal_experts_avg)) = RightTemporal_experts_avg(:,:);

matrix_weka = [frontal_beg, frontal_exp; MidFrontal_beg, MidFrontal_exp;...
    RightFrontal_beg, RightFrontal_exp; LeftFrontal_beg,LeftFrontal_exp;...
    Posterior_beg, Posterior_exp; RightPosterior_beg, RightPosterior_exp;...
    LeftPosterior_beg,LeftPosterior_exp; Occipital_beg, Occipital_exp;...
    RightParietal_beg, RightParietal_exp; LeftParietal_beg, LeftParietal_exp;...
    Temporal_beg, Temporal_exp; RightTemporal_beg, RightTemporal_exp;...
    LeftTemporal_beg, LeftTemporal_exp];
matrix_weka = matrix_weka';
columns_beg = ones(144,1);
columns_exp = ones(144,1)*2;
columns_beg_mf = ones(36,1)*3;
columns_exp_mf = ones(36,1)*4;
class = [columns_beg; columns_exp];
matrix_weka = [matrix_weka, class];
arffwrite('EEG_beginners_vs_experts', matrix_weka)

save 'weka_EEG_new'

%%
% 
% boxplot([matrix_weka(1:144,3),matrix_weka(145:end,3)])
% 
% boxplot([matrix_weka(1:144,4),matrix_weka(145:end,4)])
% 
% 
% errorbar_groups([nanmean(matrix_weka(1:144,3)),nanmean(matrix_weka(145:end,3))],[nanstd(matrix_weka(1:144,3)),nanstd(matrix_weka(145:end,3))])
% errorbar_groups([nanmean(matrix_weka(1:144,4)),nanmean(matrix_weka(145:end,4))],[nanstd(matrix_weka(1:144,4)),nanstd(matrix_weka(145:end,4))])



% hold on
% for i=1:20
%     x(i) = 100*(nanmedian(Frontal_bf(4,:,1)) - nanmedian(Frontal_bf(4,:,i)));
% end
% figure
% x = nanmean(Frontal_bf(3,:,1:20),2);
% x = permute(x,[2 3 1]);
% plot(x)
% hold on
% y = nanmean(Frontal_bnf(3,:,1:20),2);
% y = permute(y,[2 3 1]);
% plot(y)
% z = nanmean(Frontal_experts(3,:,1:19),2);
% z = permute(z,[2 3 1]);
% plot(z,'g')
% hold on
% 
% 
% for i=1:20
%     y(i) = 100*(nanmedian(Frontal_bnf(4,:,1)) - nanmedian(Frontal_bnf(4,:,i)));
% end
% plot(y,'r')
% 
% hold on
% for i=1:19
%     z(i) = 100*(nanmedian(Frontal_experts(4,:,1)) - nanmedian(Frontal_experts(4,:,i)));
% end
% plot(z,'g')
% 
% 
% Frontal_bf_ERD_early = 100*((nanmedian(x(:,1:5)) - nanmedian(x(:,6:10)))/nanmedian(x(:,6:10)));
% Frontal_bf_ERD_middle = 100*((nanmedian(x(:,1:5)) - nanmedian(x(:,11:15)))/nanmedian(x(:,11:15)));
% Frontal_bf_ERD_late = 100*((nanmedian(x(:,1:5)) - nanmedian(x(:,16:20)))/nanmedian(x(:,16:20)));
% 
% Frontal_bnf_ERD_early = 100*((nanmedian(y(:,1:5)) - nanmedian(y(:,6:10)))/nanmedian(y(:,6:10)));
% Frontal_bnf_ERD_middle = 100*((nanmedian(y(:,1:5)) - nanmedian(y(:,11:15)))/nanmedian(y(:,11:15)));
% Frontal_bnf_ERD_late = 100*((nanmedian(y(:,1:5)) - nanmedian(y(:,16:20)))/nanmedian(y(:,16:20)));
% 
% Frontal_experts_ERD_early = 100*((nanmedian(z(:,1:5)) - nanmedian(z(:,6:10)))/nanmedian(z(:,6:10)));
% Frontal_experts_ERD_middle = 100*((nanmedian(z(:,1:5)) - nanmedian(z(:,11:15)))/nanmedian(z(:,11:15)));
% Frontal_experts_ERD_late = 100*((nanmedian(z(:,1:5)) - nanmedian(z(:,16:19)))/nanmedian(z(:,16:19)));
% 
% 
% boxplot([Frontal_bf_ERD_early, Frontal_bf_ERD_middle, Frontal_bf_ERD_late])
% hold on
% boxplot([Frontal_bnf_ERD_early, Frontal_bnf_ERD_middle, Frontal_bnf_ERD_late],'r')
% hold on
% boxplot([Frontal_experts_ERD_early, Frontal_experts_ERD_middle, Frontal_experts_ERD_late],'r')
% 
% 
% 
% plot([nanmedian(Frontal_bf_early(:,4)),nanmedian(Frontal_bf_middle(:,4)),nanmedian(Frontal_bf_late(:,4))])
% hold on
% plot([nanmedian(Frontal_bnf_early(:,4)),nanmedian(Frontal_bnf_middle(:,4)),nanmedian(Frontal_bnf_late(:,4))])
% hold on
% plot([nanmedian(Frontal_experts_early(:,4)),nanmedian(Frontal_experts_middle(:,4)),nanmedian(Frontal_experts_late(:,4))])
