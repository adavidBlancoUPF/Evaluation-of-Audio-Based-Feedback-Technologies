
%%
fs = 128;


for i=1:length(eegdata_experts)
   for j=1:length(eegdata_experts{i})
       for z=1:size(eegdata_experts{i}{j},1)
            eegdata = eegdata_experts{i}{j}(z,:);
            nanvalues = find(isnan(eegdata_experts{i}{j}(z,:)));
            eegdata(nanvalues) = [];
            if ~isempty(eegdata)
                eegdata_experts_freqs{i}{j}(z,:) = spectopo(eegdata,0,fs);
                close all
            else
                eegdata_experts_freqs{i}{j}(z,:) = NaN(1,65);
            end
       end
   end
end

save('eegdata_experts_freqs','eegdata_experts_freqs');

for i=1:length(eegdata_bnf)
   for j=1:length(eegdata_bnf{i})
       for z=1:size(eegdata_bnf{i}{j},1)
            eegdata = eegdata_bnf{i}{j}(z,:);
            nanvalues = find(isnan(eegdata_bnf{i}{j}(z,:)));
            eegdata(nanvalues) = [];
            if ~isempty(eegdata)
                eegdata_bnf_freqs{i}{j}(z,:) = spectopo(eegdata,0,fs);
                close all
            else
                eegdata_bnf_freqs{i}{j}(z,:) = NaN(1,65);
            end
       end
   end
end

save ('eegdata_bnf_freqs','eegdata_bnf_freqs');

for i=1:length(eegdata_bf)
   for j=1:length(eegdata_bf{i})
       for z=1:size(eegdata_bf{i}{j},1)
            eegdata = eegdata_bf{i}{j}(z,:);
            nanvalues = find(isnan(eegdata_bf{i}{j}(z,:)));
            eegdata(nanvalues) = [];
            if ~isempty(eegdata)
                eegdata_bf_freqs{i}{j}(z,:) = spectopo(eegdata,0,fs);
                close all
            else
                eegdata_bf_freqs{i}{j}(z,:) = NaN(1,65);
            end
       end
   end
end

save ('eegdata_bf_freqs','eegdata_bf_freqs');


save 'vars'