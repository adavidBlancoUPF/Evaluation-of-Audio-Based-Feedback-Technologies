%


aperiodicity_beginners_All = ...
    vertcat(aperiodicity_All,aperiodicity_feedback, aperiodicity_experts);
dyn_instab_beginners_All = vertcat(dyn_instab_All,dyn_instab_feedback,...
    dyn_instab_experts);
pitch_instab_beginners_All = ...
    vertcat(pitch_instab_All,pitch_instab_feedback,pitch_instab_experts);

[aperiodicity_beginners_All, dyn_instab_beginners_All,...
    pitch_instab_beginners_All] = normalize(aperiodicity_beginners_All, ...
        dyn_instab_beginners_All, pitch_instab_beginners_All);
        
% z = cat(3,aperiodicity_beginners_All, dyn_instab_beginners_All, pitch_instab_beginners_All);
% gs_beginners_All = mean(z,3);
z = cat(3, dyn_instab_beginners_All, pitch_instab_beginners_All);
gs_beginners_All = mean(z,3);


%%

pi = [pitch_instab_All(:,1:5);pitch_instab_feedback(:,1:5)];

pi_exp = pitch_instab_experts(:,1:5);

[h,p] = ranksum( pi(:), pi_exp(:));




dyn = [dyn_instab_All(:,1:5);dyn_instab_feedback(:,1:5)];

dyn_exp = dyn_instab_experts(:,1:5);

[h,p] = ranksum( dyn(:), dyn_exp(:));


ap = [aperiodicity_All(:,1:5);aperiodicity_feedback(:,1:5)];

ap_exp = aperiodicity_experts(:,1:5);

[h,p] = ranksum( ap(:), ap_exp(:));



gs = gs_beginners_All(1:18,1:5);

gs_exp = gs_experts(:,1:5);

[h,p] = ranksum( gs(:), gs_exp(:));

dyn_all = [dyn; dyn_exp];

dyn = (dyn - nanmean(dyn_all(:)))/...
    (max(dyn_all(:))+min(dyn_all(:)));

dyn_exp = (dyn_exp - nanmean(dyn_all(:)))/...
    (max(dyn_all(:))+min(dyn_all(:)));



ap_all = [ap; ap_exp];

ap = (ap - nanmean(ap_all(:)))/...
    (max(ap_all(:))+min(ap_all(:)));

ap_exp = (ap_exp- nanmean(ap_all(:)))/...
    (max(ap_all(:))+min(ap_all(:)));


pi_all = [pi; pi_exp];

pi = (pi - nanmean(pi_all(:)))/...
    (max(pi_all(:))+min(pi_all(:)));

pi_exp = (pi_exp - nanmean(pi_all(:)))/...
    (max(pi_all(:))+min(pi_all(:)));


gs_3d = cat(3,pi,dyn);
gs = cat(3,gs_3d,ap);
gs = nanmean(gs,3);
gs_exp_3d = cat(3,pi_exp,dyn_exp);
gs_exp = cat(3,gs_exp_3d,ap_exp);
gs_exp = nanmean(gs_exp,3);
% gs_all = [gs_beginners_All(:,1:5); gs_experts(:,1:5)];
% 
% gs = (gs_beginners_All(:,1:5) - nanmean(gs_all(:)))/...
%     (max(gs_all(:))+min(gs_all(:)));
% 
% gs_exp = (gs(:,1:5) - nanmean(gs_all(:)))/...
%     (max(gs_all(:))+min(gs_all(:)));



barwitherr([nanstd(pi(:)), nanstd(dyn(:)), nanstd(ap(:)), nanstd(gs(:));...
    nanstd(pi_exp(:)), nanstd(dyn_exp(:)), nanstd(ap_exp(:)), nanstd(gs_exp(:))],[nanmean(pi(:)),...
    nanmean(dyn(:)), nanmean(ap(:)), nanmean(gs(:));...
    nanmean(pi_exp(:)),...
    nanmean(dyn_exp(:)), nanmean(ap_exp(:)), nanmean(gs_exp(:))]);
set(gca,'XTickLabel',{'Beginners','Experts'})
legend('Pitch Instability','Dynamic Instability','Aperiodicity','Sound Instability')
title('Participants vs Experts Scores on Sound Quality')
ylabel('Normalized Scores')


%%

pi_early_beg = 100*(nanmean(pitch_instab_All(:,1:5),2)-nanmean(pitch_instab_All(:,6:10),2))./abs(nanmean(pitch_instab_All(:,6:10),2));
pi_early_experts = 100*(nanmean(pitch_instab_experts(:,1:5),2)-nanmean(pitch_instab_experts(:,6:10),2))./abs(nanmean(pitch_instab_experts(:,6:10),2));
pi_early_feedback = 100*(nanmean(pitch_instab_feedback(:,1:5),2)-nanmean(pitch_instab_feedback(:,6:10),2))./abs(nanmean(pitch_instab_feedback(:,6:10),2));

dyn_early_beg = 100*(nanmean(dyn_instab_All(:,1:5),2)-nanmean(dyn_instab_All(:,6:10),2))./abs(nanmean(dyn_instab_All(:,6:10),2));
dyn_early_experts = 100*(nanmean(dyn_instab_experts(:,1:5),2)-nanmean(dyn_instab_experts(:,6:10),2))./abs(nanmean(dyn_instab_experts(:,6:10),2));
dyn_early_feedback = 100*(nanmean(dyn_instab_feedback(:,1:5),2)-nanmean(dyn_instab_feedback(:,6:10),2))./abs(nanmean(dyn_instab_feedback(:,6:10),2));

ap_early_beg = 100*(nanmean(aperiodicity_All(:,1:5),2)-nanmean(aperiodicity_All(:,6:10),2))./abs(nanmean(aperiodicity_All(:,6:10),2));
ap_early_experts = 100*(nanmean(aperiodicity_experts(:,1:5),2)-nanmean(aperiodicity_experts(:,6:10),2))./abs(nanmean(aperiodicity_experts(:,6:10),2));
ap_early_feedback = 100*(nanmean(aperiodicity_feedback(:,1:5),2)-nanmean(aperiodicity_feedback(:,6:10),2))./abs(nanmean(aperiodicity_feedback(:,6:10),2));

gs_3d = cat(3,pi_early_beg,dyn_early_beg);
gs = cat(3,gs_3d,ap_early_beg);
gs_early_beg = nanmean(gs,3);
gs_3d = cat(3,pi_early_experts,dyn_early_experts);
gs = cat(3,gs_3d,ap_early_experts);
gs_early_experts = nanmean(gs,3);
gs_3d = cat(3,pi_early_feedback,dyn_early_feedback);
gs = cat(3,gs_3d,ap_early_feedback);
gs_early_feedback = nanmean(gs,3);


pi_middle_beg = 100*(nanmean(pitch_instab_All(:,1:5),2)-nanmean(pitch_instab_All(:,11:15),2))./abs(nanmean(pitch_instab_All(:,11:15),2));
pi_middle_experts = 100*(nanmean(pitch_instab_experts(:,1:5),2)-nanmean(pitch_instab_experts(:,11:15),2))./abs(nanmean(pitch_instab_experts(:,11:15),2));
pi_middle_feedback = 100*(nanmean(pitch_instab_feedback(:,1:5),2)-nanmean(pitch_instab_feedback(:,11:15),2))./abs(nanmean(pitch_instab_feedback(:,11:15),2));

dyn_middle_beg = 100*(nanmean(dyn_instab_All(:,1:5),2)-nanmean(dyn_instab_All(:,11:15),2))./abs(nanmean(dyn_instab_All(:,11:15),2));
dyn_middle_experts = 100*(nanmean(dyn_instab_experts(:,1:5),2)-nanmean(dyn_instab_experts(:,11:15),2))./abs(nanmean(dyn_instab_experts(:,11:15),2));
dyn_middle_feedback = 100*(nanmean(dyn_instab_feedback(:,1:5),2)-nanmean(dyn_instab_feedback(:,11:15),2))./abs(nanmean(dyn_instab_feedback(:,11:15),2));

ap_middle_beg = 100*(nanmean(aperiodicity_All(:,1:5),2)-nanmean(aperiodicity_All(:,11:15),2))./abs(nanmean(aperiodicity_All(:,11:15),2));
ap_middle_experts = 100*(nanmean(aperiodicity_experts(:,1:5),2)-nanmean(aperiodicity_experts(:,11:15),2))./abs(nanmean(aperiodicity_experts(:,11:15),2));
ap_middle_feedback = 100*(nanmean(aperiodicity_feedback(:,1:5),2)-nanmean(aperiodicity_feedback(:,11:15),2))./abs(nanmean(aperiodicity_feedback(:,11:15),2));

gs_3d = cat(3,pi_middle_beg,dyn_middle_beg);
gs = cat(3,gs_3d,ap_middle_beg);
gs_middle_beg = nanmean(gs,3);
gs_3d = cat(3,pi_middle_experts,dyn_middle_experts);
gs = cat(3,gs_3d,ap_middle_experts);
gs_middle_experts = nanmean(gs,3);
gs_3d = cat(3,pi_middle_feedback,dyn_middle_feedback);
gs = cat(3,gs_3d,ap_middle_feedback);
gs_middle_feedback = nanmean(gs,3);


pi_late_beg = 100*(nanmean(pitch_instab_All(:,1:5),2)-nanmean(pitch_instab_All(:,16:20),2))./abs(nanmean(pitch_instab_All(:,16:20),2));
pi_late_experts = 100*(nanmean(pitch_instab_experts(:,1:5),2)-nanmean(pitch_instab_experts(:,16:20),2))./abs(nanmean(pitch_instab_experts(:,16:20),2));
pi_late_feedback = 100*(nanmean(pitch_instab_feedback(:,1:5),2)-nanmean(pitch_instab_feedback(:,16:20),2))./abs(nanmean(pitch_instab_feedback(:,16:20),2));

dyn_late_beg = 100*(nanmean(dyn_instab_All(:,1:5),2)-nanmean(dyn_instab_All(:,16:20),2))./abs(nanmean(dyn_instab_All(:,16:20),2));
dyn_late_experts = 100*(nanmean(dyn_instab_experts(:,1:5),2)-nanmean(dyn_instab_experts(:,16:20),2))./abs(nanmean(dyn_instab_experts(:,16:20),2));
dyn_late_feedback = 100*(nanmean(dyn_instab_feedback(:,1:5),2)-nanmean(dyn_instab_feedback(:,16:20),2))./abs(nanmean(dyn_instab_feedback(:,16:20),2));

ap_late_beg = 100*(nanmean(aperiodicity_All(:,1:5),2)-nanmean(aperiodicity_All(:,16:20),2))./abs(nanmean(aperiodicity_All(:,16:20),2));
ap_late_experts = 100*(nanmean(aperiodicity_experts(:,1:5),2)-nanmean(aperiodicity_experts(:,16:20),2))./abs(nanmean(aperiodicity_experts(:,16:20),2));
ap_late_feedback = 100*(nanmean(aperiodicity_feedback(:,1:5),2)-nanmean(aperiodicity_feedback(:,16:20),2))./abs(nanmean(aperiodicity_feedback(:,16:20),2));

gs_3d = cat(3,pi_late_beg,dyn_late_beg);
gs = cat(3,gs_3d,ap_late_beg);
gs_late_beg = nanmean(gs,3);
gs_3d = cat(3,pi_late_experts,dyn_late_experts);
gs = cat(3,gs_3d,ap_late_experts);
gs_late_experts = nanmean(gs,3);
gs_3d = cat(3,pi_late_feedback,dyn_late_feedback);
gs = cat(3,gs_3d,ap_late_feedback);
gs_late_feedback = nanmean(gs,3);


% ap_beg = [ap_early_beg(:), ap_middle_beg(:), ap_late_beg(:)];
% plot(nanmedian(ap_beg))
% hold on
% ap_fed = [ap_early_feedback(:), ap_middle_feedback(:), ap_late_feedback(:)];
% plot(nanmedian(ap_fed),'r');
% 
% 
% dyn_beg = [dyn_early_beg(:), dyn_middle_beg(:), dyn_late_beg(:)];
% plot(nanmedian(dyn_beg))
% hold on
% dyn_fed = [dyn_early_feedback(:), dyn_middle_feedback(:), dyn_late_feedback(:)];
% plot(nanmedian(dyn_fed),'r');
% 
% pi_beg = [pi_early_beg(:), pi_middle_beg(:), pi_late_beg(:)];
% plot(nanmedian(pi_beg))
% hold on
% pi_fed = [pi_early_feedback(:), pi_middle_feedback(:), pi_late_feedback(:)];
% plot(nanmedian(pi_fed),'r');
% 
% 
% gs_beg = [gs_early_beg(:), gs_middle_beg(:), gs_late_beg(:)];
% plot(nanmedian(gs_beg))
% hold on
% gs_fed = [gs_early_feedback(:), gs_middle_feedback(:), gs_late_feedback(:)];
% plot(nanmedian(gs_fed),'r');

figure
barwitherr([nanstd(gs_early_beg(:)), nanstd(gs_early_feedback(:)), nanstd(gs_early_experts(:));...
    nanstd(gs_middle_beg(:)), nanstd(gs_middle_feedback(:)), nanstd(gs_middle_experts(:));...
    nanstd(gs_late_beg(:)), nanstd(gs_late_feedback(:)), nanstd(gs_late_experts(:))],...
    [nanmedian(gs_early_beg(:)), nanmedian(gs_early_feedback(:)), nanmedian(gs_early_experts(:));...
    nanmedian(gs_middle_beg(:)), nanmedian(gs_middle_feedback(:)), nanstd(gs_middle_experts(:));...
    nanmedian(gs_late_beg(:)), nanmedian(gs_late_feedback(:)), nanstd(gs_late_experts(:))]);
set(gca,'XTickLabel',{'Early(6:10)','Middle(11:15)','Late(16:20)'})
legend('BNF','BF','EG')
title('Sound Instability Across periods')
ylabel('Normalized Scores')


% figure
% barwitherr([nanstd(pi_early_beg(:)), nanstd(pi_early_feedback(:)), nanstd(pi_early_experts(:));...
%     nanstd(pi_middle_beg(:)), nanstd(pi_middle_feedback(:)), nanstd(pi_middle_experts(:));...
%     nanstd(pi_late_beg(:)), nanstd(pi_late_feedback(:)), nanstd(pi_late_experts(:))],...
%     [nanmedian(pi_early_beg(:)), nanmedian(pi_early_feedback(:)), nanmedian(pi_early_experts(:));...
%     nanmedian(pi_middle_beg(:)), nanmedian(pi_middle_feedback(:)), nanstd(pi_middle_experts(:));...
%     nanmedian(pi_late_beg(:)), nanmedian(pi_late_feedback(:)), nanstd(pi_late_experts(:))]);
% set(gca,'XTickLabel',{'Early(6:10)','Middle(11:15)','Late(16:20)'})
% legend('BNF','BF','EG')
% title('Pitch Instability Across periods')
% ylabel('Normalized Scores')
% 
% 
% 
% figure
% barwitherr([nanstd(dyn_early_beg(:)), nanstd(dyn_early_feedback(:)), nanstd(dyn_early_experts(:));...
%     nanstd(dyn_middle_beg(:)), nanstd(dyn_middle_feedback(:)), nanstd(dyn_middle_experts(:));...
%     nanstd(dyn_late_beg(:)), nanstd(dyn_late_feedback(:)), nanstd(dyn_late_experts(:))],...
%     [nanmedian(dyn_early_beg(:)), nanmedian(dyn_early_feedback(:)), nanmedian(dyn_early_experts(:));...
%     nanmedian(dyn_middle_beg(:)), nanmedian(dyn_middle_feedback(:)), nanstd(dyn_middle_experts(:));...
%     nanmedian(dyn_late_beg(:)), nanmedian(dyn_late_feedback(:)), nanstd(dyn_late_experts(:))]);
% set(gca,'XTickLabel',{'Early(6:10)','Middle(11:15)','Late(16:20)'})
% legend('BNF','BF','EG')
% title('Dynamic Instability Across periods')
% ylabel('Normalized Scores')
% 
% 
% figure
% barwitherr([nanstd(ap_early_beg(:)), nanstd(ap_early_feedback(:)), nanstd(ap_early_experts(:));...
%     nanstd(ap_middle_beg(:)), nanstd(ap_middle_feedback(:)), nanstd(ap_middle_experts(:));...
%     nanstd(ap_late_beg(:)), nanstd(ap_late_feedback(:)), nanstd(ap_late_experts(:))],...
%     [nanmedian(ap_early_beg(:)), nanmedian(ap_early_feedback(:)), nanmedian(ap_early_experts(:));...
%     nanmedian(ap_middle_beg(:)), nanmedian(ap_middle_feedback(:)), nanstd(ap_middle_experts(:));...
%     nanmedian(ap_late_beg(:)), nanmedian(ap_late_feedback(:)), nanstd(ap_late_experts(:))]);
% set(gca,'XTickLabel',{'Early(6:10)','Middle(11:15)','Late(16:20)'})
% legend('BNF','BF','EG')
% title('Aperiodicity Across periods')
% ylabel('Normalized Scores')



%%

gs_beginners = gs_All;
dyn_instab_beginners = dyn_instab_All;
pitch_instab_beginners = pitch_instab_All;
aperiodicity_beginners = aperiodicity_All;


