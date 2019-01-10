
figure
plot(nanmean(aperiodicity_All));
hold on
plot(nanmean(aperiodicity_feedback),'r');
plot(nanmean(aperiodicity_experts),'g');

figure
plot(nanmean(aperiodicity_All));
hold on
plot(nanmean(aperiodicity_feedback),'r');
plot(nanmean(aperiodicity_experts),'g');

aperiodicity_All_real = [aperiodicity_All;aperiodicity_feedback];
pitch_instab_All_real = [pitch_instab_All;pitch_instab_feedback];
dyn_instab_All_real   = [dyn_instab_All; dyn_instab_feedback];

x = (1:21)';
%scatter(x,nanmean(aperiodicity_All_real))
plot(nanmean(aperiodicity_All_real));
err = nanstd(aperiodicity_All_real);
hold on;
errorbar(nanmean(aperiodicity_All_real),err,'LineStyle','none');

x = (1:21)';
%scatter(x,nanmean(aperiodicity_experts),'g')
plot(nanmean(aperiodicity_experts),'k');
err = nanstd(aperiodicity_experts);
hold on;
errorbar(nanmean(aperiodicity_experts),err,'k');

x = (1:21)';
%scatter(x,nanmean(pitch_instab_All_real))
plot(nanmean(pitch_instab_All_real));
err = nanstd(pitch_instab_All_real);
hold on;
errorbar(nanmean(pitch_instab_All_real),err,'LineStyle','none');

x = (1:21)';
%scatter(x,nanmean(pitch_instab_experts),'g')
plot(nanmean(pitch_instab_experts),'k');
err = nanstd(pitch_instab_experts);
hold on;
errorbar(nanmean(pitch_instab_experts),err,'k');

x = (1:21)';
%scatter(x,nanmean(dyn_instab_All_real))
plot(nanmean(dyn_instab_All_real));
err = nanstd(dyn_instab_All_real);
hold on;
errorbar(nanmean(dyn_instab_All_real),err,'LineStyle','none');

x = (1:21)';
%scatter(x,nanmean(dyn_instab_experts),'g')
plot(nanmean(dyn_instab_experts),'k');
err = nanstd(dyn_instab_experts);
hold on;
errorbar(nanmean(dyn_instab_experts),err,'k');