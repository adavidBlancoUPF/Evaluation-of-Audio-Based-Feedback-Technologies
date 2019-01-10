function [ ap_norm, dyn_instab_norm, pitch_instab_norm ] = ...
    normalize( aperiodicity, dyn_stab, ...
    pitch_stab)
%NORMALIZE Audio descriptors

%Mean normalization
dyn_instab_norm = (dyn_stab - nanmean(dyn_stab(:)))/(max(dyn_stab(:))-...
    min(dyn_stab(:)));
pitch_instab_norm = (pitch_stab - nanmean(pitch_stab(:)))/(max(pitch_stab(:))-...
    min(pitch_stab(:)));
ap_norm = (aperiodicity - nanmean(aperiodicity(:)))/(max(aperiodicity(:))...
    -min(aperiodicity(:)));

end

