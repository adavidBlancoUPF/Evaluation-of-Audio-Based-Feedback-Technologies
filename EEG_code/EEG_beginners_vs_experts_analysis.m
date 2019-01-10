
bf_ERD = bf_clean;
bnf_ERD = bnf_clean;
experts_ERD = experts_clean;

%% Compute Clusters
clusters

%% Create Weka Matrix
weka_groups

%% Display Results

if show_results
    figure
    h=barwitherr([nanstd(matrix_weka(1:144,3)),nanstd(matrix_weka(145:end,3));...
        nanstd(matrix_weka(1:144,4)),nanstd(matrix_weka(145:end,4))],...
        [nanmedian(matrix_weka(1:144,3)),nanmedian(matrix_weka(145:end,3));...
        nanmedian(matrix_weka(1:144,4)),nanmedian(matrix_weka(145:end,4))]);
    set(gca,'XTickLabel',{'Beta Power','Gamma Power'})
    legend('Beginners','Experts')
    title('EEG Power: Beginners vs Experts')
    ylabel('Frontal Power')
    set(h(1),'FaceColor','r');
end