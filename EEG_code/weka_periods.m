
%Beginners Feedback

Frontal_bf_early = Frontal_bf(:,:,1)'; 
Frontal_bf_middle = Frontal_bf(:,:,2)';
Frontal_bf_late = Frontal_bf(:,:,3)';

MidFrontal_bf_early = NaN(length(Frontal_bf_early),4);
MidFrontal_bf_early(1:(length(MidFrontal_bf)),:) = MidFrontal_bf(:,:,1)'; 
MidFrontal_bf_middle = NaN(length(Frontal_bf_early),4);
MidFrontal_bf_middle(1:(length(MidFrontal_bf)),:) = MidFrontal_bf(:,:,2)'; 
MidFrontal_bf_late = NaN(length(Frontal_bf_early),4);
MidFrontal_bf_late(1:(length(MidFrontal_bf)),:) = MidFrontal_bf(:,:,1)'; 

LeftFrontal_bf_early = NaN(length(Frontal_bf_early),4);
LeftFrontal_bf_early(1:(length(LeftFrontal_bf)),:) = LeftFrontal_bf(:,:,1)'; 
LeftFrontal_bf_middle = NaN(length(Frontal_bf_early),4);
LeftFrontal_bf_middle(1:(length(LeftFrontal_bf)),:) = LeftFrontal_bf(:,:,2)'; 
LeftFrontal_bf_late = NaN(length(Frontal_bf_early),4);
LeftFrontal_bf_late(1:(length(LeftFrontal_bf)),:) = LeftFrontal_bf(:,:,1)'; 

RightFrontal_bf_early = NaN(length(Frontal_bf_early),4);
RightFrontal_bf_early(1:(length(RightFrontal_bf)),:) = RightFrontal_bf(:,:,1)'; 
RightFrontal_bf_middle = NaN(length(Frontal_bf_early),4);
RightFrontal_bf_middle(1:(length(RightFrontal_bf)),:) = RightFrontal_bf(:,:,2)'; 
RightFrontal_bf_late = NaN(length(Frontal_bf_early),4);
RightFrontal_bf_late(1:(length(RightFrontal_bf)),:) = RightFrontal_bf(:,:,1)'; 

Posterior_bf_early = NaN(length(Frontal_bf_early),4);
Posterior_bf_early(1:(length(Posterior_bf)),:) = Posterior_bf(:,:,1)'; 
Posterior_bf_middle = NaN(length(Frontal_bf_early),4);
Posterior_bf_middle(1:(length(Posterior_bf)),:) = Posterior_bf(:,:,2)'; 
Posterior_bf_late = NaN(length(Frontal_bf_early),4);
Posterior_bf_late(1:(length(Posterior_bf)),:) = Posterior_bf(:,:,1)'; 


LeftPosterior_bf_early = NaN(length(Frontal_bf_early),4);
LeftPosterior_bf_early(1:(length(LeftPosterior_bf)),:) = LeftPosterior_bf(:,:,1)'; 
LeftPosterior_bf_middle = NaN(length(Frontal_bf_early),4);
LeftPosterior_bf_middle(1:(length(LeftPosterior_bf)),:) = LeftPosterior_bf(:,:,2)'; 
LeftPosterior_bf_late = NaN(length(Frontal_bf_early),4);
LeftPosterior_bf_late(1:(length(LeftPosterior_bf)),:) = LeftPosterior_bf(:,:,1)'; 

RightPosterior_bf_early = NaN(length(Frontal_bf_early),4);
RightPosterior_bf_early(1:(length(RightPosterior_bf)),:) = RightPosterior_bf(:,:,1)'; 
RightPosterior_bf_middle = NaN(length(Frontal_bf_early),4);
RightPosterior_bf_middle(1:(length(RightPosterior_bf)),:) = RightPosterior_bf(:,:,2)'; 
RightPosterior_bf_late = NaN(length(Frontal_bf_early),4);
RightPosterior_bf_late(1:(length(RightPosterior_bf)),:) = RightPosterior_bf(:,:,1)'; 

Occipital_bf_early = NaN(length(Frontal_bf_early),4);
Occipital_bf_early(1:(length(Occipital_bf)),:) = Occipital_bf(:,:,1)'; 
Occipital_bf_middle = NaN(length(Frontal_bf_early),4);
Occipital_bf_middle(1:(length(Occipital_bf)),:) = Occipital_bf(:,:,2)'; 
Occipital_bf_late = NaN(length(Frontal_bf_early),4);
Occipital_bf_late(1:(length(Occipital_bf)),:) = Occipital_bf(:,:,1)'; 

RightParietal_bf_early = NaN(length(Frontal_bf_early),4);
RightParietal_bf_early(1:(length(RightParietal_bf)),:) = RightParietal_bf(:,:,1)'; 
RightParietal_bf_middle = NaN(length(Frontal_bf_early),4);
RightParietal_bf_middle(1:(length(RightParietal_bf)),:) = RightParietal_bf(:,:,2)'; 
RightParietal_bf_late = NaN(length(Frontal_bf_early),4);
RightParietal_bf_late(1:(length(RightParietal_bf)),:) = RightParietal_bf(:,:,1)'; 

LeftParietal_bf_early = NaN(length(Frontal_bf_early),4);
LeftParietal_bf_early(1:(length(LeftParietal_bf)),:) = LeftParietal_bf(:,:,1)'; 
LeftParietal_bf_middle = NaN(length(Frontal_bf_early),4);
LeftParietal_bf_middle(1:(length(LeftParietal_bf)),:) = LeftParietal_bf(:,:,2)'; 
LeftParietal_bf_late = NaN(length(Frontal_bf_early),4);
LeftParietal_bf_late(1:(length(LeftParietal_bf)),:) = LeftParietal_bf(:,:,1)'; 

Temporal_bf_early = NaN(length(Frontal_bf_early),4);
Temporal_bf_early(1:(length(Temporal_bf)),:) = Temporal_bf(:,:,1)'; 
Temporal_bf_middle = NaN(length(Frontal_bf_early),4);
Temporal_bf_middle(1:(length(Temporal_bf)),:) = Temporal_bf(:,:,2)'; 
Temporal_bf_late = NaN(length(Frontal_bf_early),4);
Temporal_bf_late(1:(length(Temporal_bf)),:) = Temporal_bf(:,:,1)'; 

RightTemporal_bf_early = NaN(length(Frontal_bf_early),4);
RightTemporal_bf_early(1:(length(RightTemporal_bf)),:) = RightTemporal_bf(:,:,1)'; 
RightTemporal_bf_middle = NaN(length(Frontal_bf_early),4);
RightTemporal_bf_middle(1:(length(RightTemporal_bf)),:) = RightTemporal_bf(:,:,2)'; 
RightTemporal_bf_late = NaN(length(Frontal_bf_early),4);
RightTemporal_bf_late(1:(length(RightTemporal_bf)),:) = RightTemporal_bf(:,:,1)'; 

LeftTemporal_bf_early = NaN(length(Frontal_bf_early),4);
LeftTemporal_bf_early(1:(length(LeftTemporal_bf)),:) = LeftTemporal_bf(:,:,1)'; 
LeftTemporal_bf_middle = NaN(length(Frontal_bf_early),4);
LeftTemporal_bf_middle(1:(length(LeftTemporal_bf)),:) = LeftTemporal_bf(:,:,2)'; 
LeftTemporal_bf_late = NaN(length(Frontal_bf_early),4);
LeftTemporal_bf_late(1:(length(LeftTemporal_bf)),:) = LeftTemporal_bf(:,:,1)'; 


weka_early = [Frontal_bf_early, MidFrontal_bf_early,...
    LeftFrontal_bf_early, RightFrontal_bf_early,...
    Posterior_bf_early, RightPosterior_bf_early,...
    LeftPosterior_bf_early, RightParietal_bf_early,...
    LeftParietal_bf_early, Occipital_bf_early,...
    Temporal_bf_early, LeftTemporal_bf_early,...
    RightTemporal_bf_early];

weka_middle = [Frontal_bf_middle, MidFrontal_bf_middle,...
    LeftFrontal_bf_middle, RightFrontal_bf_middle,...
    Posterior_bf_middle, RightPosterior_bf_middle,...
    LeftPosterior_bf_middle, RightParietal_bf_middle,...
    LeftParietal_bf_middle, Occipital_bf_middle,...
    Temporal_bf_middle, LeftTemporal_bf_middle,...
    RightTemporal_bf_middle];

weka_late = [Frontal_bf_late, MidFrontal_bf_late,...
    LeftFrontal_bf_late, RightFrontal_bf_late,...
    Posterior_bf_late, RightPosterior_bf_late,...
    LeftPosterior_bf_late, RightParietal_bf_late,...
    LeftParietal_bf_late, Occipital_bf_late,...
    Temporal_bf_late, LeftTemporal_bf_late,...
    RightTemporal_bf_late];

columns_early = ones(size(weka_early,1),1);
columns_middle = ones(size(weka_middle,1),1)*2;
columns_late = ones(size(weka_middle,1),1)*3;

weka_matrix = [weka_early; weka_middle; weka_late];
class = [columns_early; columns_middle; columns_late];
weka_matrix = [weka_matrix, class];


arffwrite('EEG_early_bf', weka_matrix)





%% 



%Beginners No Feedback

Frontal_bnf_early = Frontal_bnf(:,:,1)'; 
Frontal_bnf_middle = Frontal_bnf(:,:,2)';
Frontal_bnf_late = Frontal_bnf(:,:,3)';

MidFrontal_bnf_early = NaN(length(Frontal_bnf_early),4);
MidFrontal_bnf_early(1:(length(MidFrontal_bnf)),:) = MidFrontal_bnf(:,:,1)'; 
MidFrontal_bnf_middle = NaN(length(Frontal_bnf_early),4);
MidFrontal_bnf_middle(1:(length(MidFrontal_bnf)),:) = MidFrontal_bnf(:,:,2)'; 
MidFrontal_bnf_late = NaN(length(Frontal_bnf_early),4);
MidFrontal_bnf_late(1:(length(MidFrontal_bnf)),:) = MidFrontal_bnf(:,:,1)'; 

LeftFrontal_bnf_early = NaN(length(Frontal_bnf_early),4);
LeftFrontal_bnf_early(1:(length(LeftFrontal_bnf)),:) = LeftFrontal_bnf(:,:,1)'; 
LeftFrontal_bnf_middle = NaN(length(Frontal_bnf_early),4);
LeftFrontal_bnf_middle(1:(length(LeftFrontal_bnf)),:) = LeftFrontal_bnf(:,:,2)'; 
LeftFrontal_bnf_late = NaN(length(Frontal_bnf_early),4);
LeftFrontal_bnf_late(1:(length(LeftFrontal_bnf)),:) = LeftFrontal_bnf(:,:,1)'; 

RightFrontal_bnf_early = NaN(length(Frontal_bnf_early),4);
RightFrontal_bnf_early(1:(length(RightFrontal_bnf)),:) = RightFrontal_bnf(:,:,1)'; 
RightFrontal_bnf_middle = NaN(length(Frontal_bnf_early),4);
RightFrontal_bnf_middle(1:(length(RightFrontal_bnf)),:) = RightFrontal_bnf(:,:,2)'; 
RightFrontal_bnf_late = NaN(length(Frontal_bnf_early),4);
RightFrontal_bnf_late(1:(length(RightFrontal_bnf)),:) = RightFrontal_bnf(:,:,1)'; 

Posterior_bnf_early = NaN(length(Frontal_bnf_early),4);
Posterior_bnf_early(1:(length(Posterior_bnf)),:) = Posterior_bnf(:,:,1)'; 
Posterior_bnf_middle = NaN(length(Frontal_bnf_early),4);
Posterior_bnf_middle(1:(length(Posterior_bnf)),:) = Posterior_bnf(:,:,2)'; 
Posterior_bnf_late = NaN(length(Frontal_bnf_early),4);
Posterior_bnf_late(1:(length(Posterior_bnf)),:) = Posterior_bnf(:,:,1)'; 


LeftPosterior_bnf_early = NaN(length(Frontal_bnf_early),4);
LeftPosterior_bnf_early(1:(length(LeftPosterior_bnf)),:) = LeftPosterior_bnf(:,:,1)'; 
LeftPosterior_bnf_middle = NaN(length(Frontal_bnf_early),4);
LeftPosterior_bnf_middle(1:(length(LeftPosterior_bnf)),:) = LeftPosterior_bnf(:,:,2)'; 
LeftPosterior_bnf_late = NaN(length(Frontal_bnf_early),4);
LeftPosterior_bnf_late(1:(length(LeftPosterior_bnf)),:) = LeftPosterior_bnf(:,:,1)'; 

RightPosterior_bnf_early = NaN(length(Frontal_bnf_early),4);
RightPosterior_bnf_early(1:(length(RightPosterior_bnf)),:) = RightPosterior_bnf(:,:,1)'; 
RightPosterior_bnf_middle = NaN(length(Frontal_bnf_early),4);
RightPosterior_bnf_middle(1:(length(RightPosterior_bnf)),:) = RightPosterior_bnf(:,:,2)'; 
RightPosterior_bnf_late = NaN(length(Frontal_bnf_early),4);
RightPosterior_bnf_late(1:(length(RightPosterior_bnf)),:) = RightPosterior_bnf(:,:,1)'; 

Occipital_bnf_early = NaN(length(Frontal_bnf_early),4);
Occipital_bnf_early(1:(length(Occipital_bnf)),:) = Occipital_bnf(:,:,1)'; 
Occipital_bnf_middle = NaN(length(Frontal_bnf_early),4);
Occipital_bnf_middle(1:(length(Occipital_bnf)),:) = Occipital_bnf(:,:,2)'; 
Occipital_bnf_late = NaN(length(Frontal_bnf_early),4);
Occipital_bnf_late(1:(length(Occipital_bnf)),:) = Occipital_bnf(:,:,1)'; 

RightParietal_bnf_early = NaN(length(Frontal_bnf_early),4);
RightParietal_bnf_early(1:(length(RightParietal_bnf)),:) = RightParietal_bnf(:,:,1)'; 
RightParietal_bnf_middle = NaN(length(Frontal_bnf_early),4);
RightParietal_bnf_middle(1:(length(RightParietal_bnf)),:) = RightParietal_bnf(:,:,2)'; 
RightParietal_bnf_late = NaN(length(Frontal_bnf_early),4);
RightParietal_bnf_late(1:(length(RightParietal_bnf)),:) = RightParietal_bnf(:,:,1)'; 

LeftParietal_bnf_early = NaN(length(Frontal_bnf_early),4);
LeftParietal_bnf_early(1:(length(LeftParietal_bnf)),:) = LeftParietal_bnf(:,:,1)'; 
LeftParietal_bnf_middle = NaN(length(Frontal_bnf_early),4);
LeftParietal_bnf_middle(1:(length(LeftParietal_bnf)),:) = LeftParietal_bnf(:,:,2)'; 
LeftParietal_bnf_late = NaN(length(Frontal_bnf_early),4);
LeftParietal_bnf_late(1:(length(LeftParietal_bnf)),:) = LeftParietal_bnf(:,:,1)'; 

Temporal_bnf_early = NaN(length(Frontal_bnf_early),4);
Temporal_bnf_early(1:(length(Temporal_bnf)),:) = Temporal_bnf(:,:,1)'; 
Temporal_bnf_middle = NaN(length(Frontal_bnf_early),4);
Temporal_bnf_middle(1:(length(Temporal_bnf)),:) = Temporal_bnf(:,:,2)'; 
Temporal_bnf_late = NaN(length(Frontal_bnf_early),4);
Temporal_bnf_late(1:(length(Temporal_bnf)),:) = Temporal_bnf(:,:,1)'; 

RightTemporal_bnf_early = NaN(length(Frontal_bnf_early),4);
RightTemporal_bnf_early(1:(length(RightTemporal_bnf)),:) = RightTemporal_bnf(:,:,1)'; 
RightTemporal_bnf_middle = NaN(length(Frontal_bnf_early),4);
RightTemporal_bnf_middle(1:(length(RightTemporal_bnf)),:) = RightTemporal_bnf(:,:,2)'; 
RightTemporal_bnf_late = NaN(length(Frontal_bnf_early),4);
RightTemporal_bnf_late(1:(length(RightTemporal_bnf)),:) = RightTemporal_bnf(:,:,1)'; 

LeftTemporal_bnf_early = NaN(length(Frontal_bnf_early),4);
LeftTemporal_bnf_early(1:(length(LeftTemporal_bnf)),:) = LeftTemporal_bnf(:,:,1)'; 
LeftTemporal_bnf_middle = NaN(length(Frontal_bnf_early),4);
LeftTemporal_bnf_middle(1:(length(LeftTemporal_bnf)),:) = LeftTemporal_bnf(:,:,2)'; 
LeftTemporal_bnf_late = NaN(length(Frontal_bnf_early),4);
LeftTemporal_bnf_late(1:(length(LeftTemporal_bnf)),:) = LeftTemporal_bnf(:,:,1)'; 


weka_bnf_early = [Frontal_bnf_early, MidFrontal_bnf_early,...
    LeftFrontal_bnf_early, RightFrontal_bnf_early,...
    Posterior_bnf_early, RightPosterior_bnf_early,...
    LeftPosterior_bnf_early, RightParietal_bnf_early,...
    LeftParietal_bnf_early, Occipital_bnf_early,...
    Temporal_bnf_early, LeftTemporal_bnf_early,...
    RightTemporal_bnf_early];

weka_bnf_middle = [Frontal_bnf_middle, MidFrontal_bnf_middle,...
    LeftFrontal_bnf_middle, RightFrontal_bnf_middle,...
    Posterior_bnf_middle, RightPosterior_bnf_middle,...
    LeftPosterior_bnf_middle, RightParietal_bnf_middle,...
    LeftParietal_bnf_middle, Occipital_bnf_middle,...
    Temporal_bnf_middle, LeftTemporal_bnf_middle,...
    RightTemporal_bnf_middle];

weka_bnf_late = [Frontal_bnf_late, MidFrontal_bnf_late,...
    LeftFrontal_bnf_late, RightFrontal_bnf_late,...
    Posterior_bnf_late, RightPosterior_bnf_late,...
    LeftPosterior_bnf_late, RightParietal_bnf_late,...
    LeftParietal_bnf_late, Occipital_bnf_late,...
    Temporal_bnf_late, LeftTemporal_bnf_late,...
    RightTemporal_bnf_late];

columns_early = ones(size(weka_bnf_early,1),1);
columns_middle = ones(size(weka_bnf_middle,1),1)*2;
columns_late = ones(size(weka_bnf_middle,1),1)*3;

weka_bnf_matrix = [weka_bnf_early; weka_bnf_middle; weka_bnf_late];
class = [columns_early; columns_middle; columns_late];
weka_bnf_matrix = [weka_bnf_matrix, class];


arffwrite('EEG_early_bnf', weka_bnf_matrix)




%% 



%Beginners No Feedback

Frontal_experts_early = Frontal_experts(:,:,1)'; 
Frontal_experts_middle = Frontal_experts(:,:,2)';
Frontal_experts_late = Frontal_experts(:,:,3)';

MidFrontal_experts_early = NaN(length(Frontal_experts_early),4);
MidFrontal_experts_early(1:(length(MidFrontal_experts)),:) = MidFrontal_experts(:,:,1)'; 
MidFrontal_experts_middle = NaN(length(Frontal_experts_early),4);
MidFrontal_experts_middle(1:(length(MidFrontal_experts)),:) = MidFrontal_experts(:,:,2)'; 
MidFrontal_experts_late = NaN(length(Frontal_experts_early),4);
MidFrontal_experts_late(1:(length(MidFrontal_experts)),:) = MidFrontal_experts(:,:,1)'; 

LeftFrontal_experts_early = NaN(length(Frontal_experts_early),4);
LeftFrontal_experts_early(1:(length(LeftFrontal_experts)),:) = LeftFrontal_experts(:,:,1)'; 
LeftFrontal_experts_middle = NaN(length(Frontal_experts_early),4);
LeftFrontal_experts_middle(1:(length(LeftFrontal_experts)),:) = LeftFrontal_experts(:,:,2)'; 
LeftFrontal_experts_late = NaN(length(Frontal_experts_early),4);
LeftFrontal_experts_late(1:(length(LeftFrontal_experts)),:) = LeftFrontal_experts(:,:,1)'; 

RightFrontal_experts_early = NaN(length(Frontal_experts_early),4);
RightFrontal_experts_early(1:(length(RightFrontal_experts)),:) = RightFrontal_experts(:,:,1)'; 
RightFrontal_experts_middle = NaN(length(Frontal_experts_early),4);
RightFrontal_experts_middle(1:(length(RightFrontal_experts)),:) = RightFrontal_experts(:,:,2)'; 
RightFrontal_experts_late = NaN(length(Frontal_experts_early),4);
RightFrontal_experts_late(1:(length(RightFrontal_experts)),:) = RightFrontal_experts(:,:,1)'; 

Posterior_experts_early = NaN(length(Frontal_experts_early),4);
Posterior_experts_early(1:(length(Posterior_experts)),:) = Posterior_experts(:,:,1)'; 
Posterior_experts_middle = NaN(length(Frontal_experts_early),4);
Posterior_experts_middle(1:(length(Posterior_experts)),:) = Posterior_experts(:,:,2)'; 
Posterior_experts_late = NaN(length(Frontal_experts_early),4);
Posterior_experts_late(1:(length(Posterior_experts)),:) = Posterior_experts(:,:,1)'; 


LeftPosterior_experts_early = NaN(length(Frontal_experts_early),4);
LeftPosterior_experts_early(1:(length(LeftPosterior_experts)),:) = LeftPosterior_experts(:,:,1)'; 
LeftPosterior_experts_middle = NaN(length(Frontal_experts_early),4);
LeftPosterior_experts_middle(1:(length(LeftPosterior_experts)),:) = LeftPosterior_experts(:,:,2)'; 
LeftPosterior_experts_late = NaN(length(Frontal_experts_early),4);
LeftPosterior_experts_late(1:(length(LeftPosterior_experts)),:) = LeftPosterior_experts(:,:,1)'; 

RightPosterior_experts_early = NaN(length(Frontal_experts_early),4);
RightPosterior_experts_early(1:(length(RightPosterior_experts)),:) = RightPosterior_experts(:,:,1)'; 
RightPosterior_experts_middle = NaN(length(Frontal_experts_early),4);
RightPosterior_experts_middle(1:(length(RightPosterior_experts)),:) = RightPosterior_experts(:,:,2)'; 
RightPosterior_experts_late = NaN(length(Frontal_experts_early),4);
RightPosterior_experts_late(1:(length(RightPosterior_experts)),:) = RightPosterior_experts(:,:,1)'; 

Occipital_experts_early = NaN(length(Frontal_experts_early),4);
Occipital_experts_early(1:(length(Occipital_experts)),:) = Occipital_experts(:,:,1)'; 
Occipital_experts_middle = NaN(length(Frontal_experts_early),4);
Occipital_experts_middle(1:(length(Occipital_experts)),:) = Occipital_experts(:,:,2)'; 
Occipital_experts_late = NaN(length(Frontal_experts_early),4);
Occipital_experts_late(1:(length(Occipital_experts)),:) = Occipital_experts(:,:,1)'; 

RightParietal_experts_early = NaN(length(Frontal_experts_early),4);
RightParietal_experts_early(1:(length(RightParietal_experts)),:) = RightParietal_experts(:,:,1)'; 
RightParietal_experts_middle = NaN(length(Frontal_experts_early),4);
RightParietal_experts_middle(1:(length(RightParietal_experts)),:) = RightParietal_experts(:,:,2)'; 
RightParietal_experts_late = NaN(length(Frontal_experts_early),4);
RightParietal_experts_late(1:(length(RightParietal_experts)),:) = RightParietal_experts(:,:,1)'; 

LeftParietal_experts_early = NaN(length(Frontal_experts_early),4);
LeftParietal_experts_early(1:(length(LeftParietal_experts)),:) = LeftParietal_experts(:,:,1)'; 
LeftParietal_experts_middle = NaN(length(Frontal_experts_early),4);
LeftParietal_experts_middle(1:(length(LeftParietal_experts)),:) = LeftParietal_experts(:,:,2)'; 
LeftParietal_experts_late = NaN(length(Frontal_experts_early),4);
LeftParietal_experts_late(1:(length(LeftParietal_experts)),:) = LeftParietal_experts(:,:,1)'; 

Temporal_experts_early = NaN(length(Frontal_experts_early),4);
Temporal_experts_early(1:(length(Temporal_experts)),:) = Temporal_experts(:,:,1)'; 
Temporal_experts_middle = NaN(length(Frontal_experts_early),4);
Temporal_experts_middle(1:(length(Temporal_experts)),:) = Temporal_experts(:,:,2)'; 
Temporal_experts_late = NaN(length(Frontal_experts_early),4);
Temporal_experts_late(1:(length(Temporal_experts)),:) = Temporal_experts(:,:,1)'; 

RightTemporal_experts_early = NaN(length(Frontal_experts_early),4);
RightTemporal_experts_early(1:(length(RightTemporal_experts)),:) = RightTemporal_experts(:,:,1)'; 
RightTemporal_experts_middle = NaN(length(Frontal_experts_early),4);
RightTemporal_experts_middle(1:(length(RightTemporal_experts)),:) = RightTemporal_experts(:,:,2)'; 
RightTemporal_experts_late = NaN(length(Frontal_experts_early),4);
RightTemporal_experts_late(1:(length(RightTemporal_experts)),:) = RightTemporal_experts(:,:,1)'; 

LeftTemporal_experts_early = NaN(length(Frontal_experts_early),4);
LeftTemporal_experts_early(1:(length(LeftTemporal_experts)),:) = LeftTemporal_experts(:,:,1)'; 
LeftTemporal_experts_middle = NaN(length(Frontal_experts_early),4);
LeftTemporal_experts_middle(1:(length(LeftTemporal_experts)),:) = LeftTemporal_experts(:,:,2)'; 
LeftTemporal_experts_late = NaN(length(Frontal_experts_early),4);
LeftTemporal_experts_late(1:(length(LeftTemporal_experts)),:) = LeftTemporal_experts(:,:,1)'; 


weka_experts_early = [Frontal_experts_early, MidFrontal_experts_early,...
    LeftFrontal_experts_early, RightFrontal_experts_early,...
    Posterior_experts_early, RightPosterior_experts_early,...
    LeftPosterior_experts_early, RightParietal_experts_early,...
    LeftParietal_experts_early, Occipital_experts_early,...
    Temporal_experts_early, LeftTemporal_experts_early,...
    RightTemporal_experts_early];

weka_experts_middle = [Frontal_experts_middle, MidFrontal_experts_middle,...
    LeftFrontal_experts_middle, RightFrontal_experts_middle,...
    Posterior_experts_middle, RightPosterior_experts_middle,...
    LeftPosterior_experts_middle, RightParietal_experts_middle,...
    LeftParietal_experts_middle, Occipital_experts_middle,...
    Temporal_experts_middle, LeftTemporal_experts_middle,...
    RightTemporal_experts_middle];

weka_experts_late = [Frontal_experts_late, MidFrontal_experts_late,...
    LeftFrontal_experts_late, RightFrontal_experts_late,...
    Posterior_experts_late, RightPosterior_experts_late,...
    LeftPosterior_experts_late, RightParietal_experts_late,...
    LeftParietal_experts_late, Occipital_experts_late,...
    Temporal_experts_late, LeftTemporal_experts_late,...
    RightTemporal_experts_late];

columns_early = ones(size(weka_experts_early,1),1);
columns_middle = ones(size(weka_experts_middle,1),1)*2;
columns_late = ones(size(weka_experts_middle,1),1)*3;

weka_experts_matrix = [weka_experts_early; weka_experts_middle; weka_experts_late];
class = [columns_early; columns_middle; columns_late];
weka_experts_matrix = [weka_experts_matrix, class];


arffwrite('EEG_early_experts', weka_experts_matrix)






%%

% 
figure
f=4;
barwitherr([nanstd(weka_bnf_early(:,f)), nanstd(weka_early(:,f)),nanstd(weka_experts_early(:,f)); ...
    nanstd(weka_bnf_middle(:,f)),nanstd(weka_middle(:,f)), nanstd(weka_experts_middle(:,f)); ...
    nanstd(weka_bnf_middle(:,f)),nanstd(weka_late(:,f)), nanstd(weka_experts_late(:,f))],...
    [nanmedian(weka_bnf_early(:,f)), nanmedian(weka_early(:,f)), nanmedian(weka_experts_early(:,f));...
    nanmedian(weka_bnf_middle(:,f)), nanmedian(weka_middle(:,f)), nanmedian(weka_experts_middle(:,f));...
    nanmedian(weka_bnf_late(:,f)),nanmedian(weka_late(:,f)),  nanmedian(weka_experts_late(:,f)) ])

set(gca,'XTickLabel',{'Early (6:10)','Middle (11:15)', 'Late (16:20)'})
legend('BNF','BF','EG')
title('Frontal Gamma ERD/ERS(%) across periods')
ylabel('ERD/ERS(%)','fontweight','bold')

figure
f=32;
barwitherr([nanstd(weka_bnf_early(:,f)), nanstd(weka_early(:,f)),nanstd(weka_experts_early(:,f)); ...
    nanstd(weka_bnf_middle(:,f)),nanstd(weka_middle(:,f)), nanstd(weka_experts_middle(:,f)); ...
    nanstd(weka_bnf_middle(:,f)),nanstd(weka_late(:,f)), nanstd(weka_experts_late(:,f))],...
    [nanmedian(weka_bnf_early(:,f)), nanmedian(weka_early(:,f)), nanmedian(weka_experts_early(:,f));...
    nanmedian(weka_bnf_middle(:,f)), nanmedian(weka_middle(:,f)), nanmedian(weka_experts_middle(:,f));...
    nanmedian(weka_bnf_late(:,f)),nanmedian(weka_late(:,f)),  nanmedian(weka_experts_late(:,f)) ])

set(gca,'XTickLabel',{'Early (6:10)','Middle (11:15)', 'Late (16:20)'})
legend('BNF','BF','EG')
title('Right Parietal Gamma ERD/ERS(%) across periods')
ylabel('ERD/ERS(%)','fontweight','bold')


figure
f=48;
barwitherr([nanstd(weka_bnf_early(:,f)), nanstd(weka_early(:,f)),nanstd(weka_experts_early(:,f)); ...
    nanstd(weka_bnf_middle(:,f)),nanstd(weka_middle(:,f)), nanstd(weka_experts_middle(:,f)); ...
    nanstd(weka_bnf_middle(:,f)),nanstd(weka_late(:,f)), nanstd(weka_experts_late(:,f))],...
    [nanmedian(weka_bnf_early(:,f)), nanmedian(weka_early(:,f)), nanmedian(weka_experts_early(:,f));...
    nanmedian(weka_bnf_middle(:,f)), nanmedian(weka_middle(:,f)), nanmedian(weka_experts_middle(:,f));...
    nanmedian(weka_bnf_late(:,f)),nanmedian(weka_late(:,f)),  nanmedian(weka_experts_late(:,f)) ])

set(gca,'XTickLabel',{'Early (6:10)','Middle (11:15)', 'Late (16:20)'})
legend('BNF','BF','EG')
title('Left Temporal Gamma ERD/ERS(%) across periods')
ylabel('ERD/ERS(%)','fontweight','bold')

figure
f=51;
barwitherr([nanstd(weka_bnf_early(:,f)), nanstd(weka_early(:,f)),nanstd(weka_experts_early(:,f)); ...
    nanstd(weka_bnf_middle(:,f)),nanstd(weka_middle(:,f)), nanstd(weka_experts_middle(:,f)); ...
    nanstd(weka_bnf_middle(:,f)),nanstd(weka_late(:,f)), nanstd(weka_experts_late(:,f))],...
    [nanmedian(weka_bnf_early(:,f)), nanmedian(weka_early(:,f)), nanmedian(weka_experts_early(:,f));...
    nanmedian(weka_bnf_middle(:,f)), nanmedian(weka_middle(:,f)), nanmedian(weka_experts_middle(:,f));...
    nanmedian(weka_bnf_late(:,f)),nanmedian(weka_late(:,f)),  nanmedian(weka_experts_late(:,f)) ])

set(gca,'XTickLabel',{'Early (6:10)','Middle (11:15)', 'Late (16:20)'})
legend('BNF','BF','EG')
title('Right Temporal Beta ERD/ERS(%) across periods')
ylabel('ERD/ERS(%)','fontweight','bold')

