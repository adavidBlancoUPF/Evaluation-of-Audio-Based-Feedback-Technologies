load learning_materials.mat

learning_materials = [beginners_learning_materials', beginners_reference_video',...
    feedback_learning_materials', feedback_reference_video', feedback_good_sounds'];

learning_materials = [beginners_learning_materials', feedback_learning_materials'];


barwitherr([std(beginners_learning_materials), std(feedback_learning_materials);...
     std(beginners_reference_video), std(feedback_reference_video)],...
    [mean(beginners_learning_materials), mean(feedback_learning_materials);
    mean(beginners_reference_video), mean(feedback_reference_video)])
set(gca,'XTickLabel',{'Youtube Videos','Reference Video'},'fontweight','bold')
legend({'BNF','BF'},'FontSize',11)
title('Learning Materials')
ylabel('Number of times requested','fontweight','bold')
