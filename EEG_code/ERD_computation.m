%%

bf_ERD = zeros(size(bf_clean,1),size(bf_clean,2),size(bf_clean,3),3);
for i=1:size(bf_clean,1)
   for j=1:size(bf_clean,2)
       for z=1:size(bf_clean,3)
           bf_ERD(i,j,z,1) = 100*(nanmean(bf_clean(i,j,z,1:5) - nanmean(bf_clean(i,j,z,6:10))))/abs(nanmean(bf_clean(i,j,z,6:10)));
           bf_ERD(i,j,z,2) = 100*(nanmean(bf_clean(i,j,z,1:5) - nanmean(bf_clean(i,j,z,11:15))))/abs(nanmean(bf_clean(i,j,z,11:15)));
           bf_ERD(i,j,z,3) = 100*(nanmean(bf_clean(i,j,z,1:5) - nanmean(bf_clean(i,j,z,16:20))))/abs(nanmean(bf_clean(i,j,z,16:20)));
       end
   end
end

bnf_ERD = zeros(size(bnf_clean,1),size(bnf_clean,2),size(bnf_clean,3),3);
for i=1:size(bnf_clean,1)
   for j=1:size(bnf_clean,2)
       for z=1:size(bnf_clean,3)
           bnf_ERD(i,j,z,1) = 100*(nanmean(bnf_clean(i,j,z,1:5) - nanmean(bnf_clean(i,j,z,6:10))))/abs(nanmean(bnf_clean(i,j,z,6:10)));
           bnf_ERD(i,j,z,2) = 100*(nanmean(bnf_clean(i,j,z,1:5) - nanmean(bnf_clean(i,j,z,11:15))))/abs(nanmean(bnf_clean(i,j,z,11:15)));
           bnf_ERD(i,j,z,3) = 100*(nanmean(bnf_clean(i,j,z,1:5) - nanmean(bnf_clean(i,j,z,16:20))))/abs(nanmean(bnf_clean(i,j,z,16:end)));
       end
   end
end



experts_ERD = zeros(size(experts_clean,1),size(experts_clean,2),size(experts_clean,3),3);
for i=1:size(experts_clean,1)
   for j=1:size(experts_clean,2)
       for z=1:size(experts_clean,3)
           experts_ERD(i,j,z,1) = 100*(nanmean(experts_clean(i,j,z,1:5) - nanmean(experts_clean(i,j,z,6:10))))/abs(nanmean(experts_clean(i,j,z,6:10)));
           experts_ERD(i,j,z,2) = 100*(nanmean(experts_clean(i,j,z,1:5) - nanmean(experts_clean(i,j,z,11:15))))/abs(nanmean(experts_clean(i,j,z,11:15)));
           experts_ERD(i,j,z,3) = 100*(nanmean(experts_clean(i,j,z,1:5) - nanmean(experts_clean(i,j,z,16:end))))/abs(nanmean(experts_clean(i,j,z,16:end)));
       end
   end
end