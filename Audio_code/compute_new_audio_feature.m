

%load matrix_audio_weka
%matrix = matrix_feedback;
%Extract features from matrix
dyn_stab = matrix(:,1);
pitch_stab = matrix(:,2);
aperiodicity = matrix(:,3);

%Mean normalization
dyn_stab_norm = (dyn_stab - nanmean(dyn_stab))/(max(dyn_stab)+min(dyn_stab));
pitch_stab_norm = (pitch_stab - nanmean(pitch_stab))/(max(pitch_stab)+...
    min(pitch_stab));
aperiodicity_norm = (aperiodicity - nanmean(aperiodicity))/(max(aperiodicity)...
    +min(aperiodicity));


%Compute Good Sound descriptor
good_sound = (1/3)*dyn_stab_norm + (1/3)*pitch_stab_norm +...
    (1/3)*aperiodicity_norm;

% Compute Good Sound descriptor without aperiodicity
good_sound_wth = (1/3)*dyn_stab_norm + (1/3)*pitch_stab_norm;

aux = matrix(:,4);
matrix(:,4) = good_sound;
matrix(:,5) = aux;
