%load matrix_beginners_and_experts_normalized.mat

%load matrix_21_trials_7_subjects.mat
matrix_Beginners_All = matrix;

n_trials = 7;

%Beginners
 matrix_1 = matrix_Beginners_All(:,4) == 1;
 matrix2_b_e = matrix_Beginners_All(matrix_1,5);
 matrix2_b_e_av = vec2mat(matrix2_b_e,n_trials);
 matrix2_b_e_av =  matrix2_b_e_av';
 matrix2_b_e_av =  nanmean(matrix2_b_e_av);
 matrix2_b_e_av =  matrix2_b_e_av';
 
 matrix_1 = matrix_Beginners_All(:,4) == 2;
 matrix2_b_m = matrix_Beginners_All(matrix_1,5);
 matrix2_b_m_av = vec2mat(matrix2_b_m,n_trials);
 matrix2_b_m_av =  matrix2_b_m_av';
 matrix2_b_m_av =  nanmean(matrix2_b_m_av);
 matrix2_b_m_av =  matrix2_b_m_av';
 
 matrix_1 = matrix_Beginners_All(:,4) == 3;
 matrix2_b_l = matrix_Beginners_All(matrix_1,5);
 matrix2_b_l_av = vec2mat(matrix2_b_l,n_trials);
  
 matrix2_b_l_av =  matrix2_b_l_av';
 matrix2_b_l_av =  nanmean(matrix2_b_l_av);
 matrix2_b_l_av =  matrix2_b_l_av';
 
 %Feedback
 matrix_1 = matrix_Beginners_All(:,4) == 7;
 matrix2_f_e = matrix_Beginners_All(matrix_1,5);
 matrix2_f_e_av = vec2mat(matrix2_f_e,n_trials);
 
 matrix2_f_e_av =  matrix2_f_e_av';
 matrix2_f_e_av =  nanmean(matrix2_f_e_av);
 matrix2_f_e_av =  matrix2_f_e_av';
 
 matrix_1 = matrix_Beginners_All(:,4) == 8;
 matrix2_f_m = matrix_Beginners_All(matrix_1,5);
 matrix2_f_m_av = vec2mat(matrix2_f_m,n_trials);
 matrix2_f_m_av =  matrix2_f_m_av';
 matrix2_f_m_av =  nanmean(matrix2_f_m_av);
 matrix2_f_m_av =  matrix2_f_m_av';
 
 matrix_1 = matrix_Beginners_All(:,4) == 9;
 matrix2_f_l = matrix_Beginners_All(matrix_1,5);
 matrix2_f_l_av = vec2mat(matrix2_f_l,n_trials);
 matrix2_f_l_av =  matrix2_f_l_av';
 matrix2_f_l_av =  nanmean(matrix2_f_l_av);
 matrix2_f_l_av =  matrix2_f_l_av';
 
 
 matrix2_b = [matrix2_b_e_av, matrix2_b_m_av, matrix2_b_l_av];
 matrix2_f = [matrix2_f_e_av, matrix2_f_m_av, matrix2_f_l_av];
 
 %%
 %Experts
 matrix_1 = matrix_normalized(:,4) == 4;
 matrix2_e_e = matrix_normalized(matrix_1,5);
 matrix2_e_e_av = vec2mat(matrix2_e_e,6);
 matrix2_e_e_av =  matrix2_e_e_av';
 matrix2_e_e_av =  mean(matrix2_e_e_av);
 matrix2_e_e_av =  matrix2_e_e_av';
 
 matrix_1 = matrix_normalized(:,4) == 5;
 matrix2_e_m = matrix_normalized(matrix_1,5);
 matrix2_e_m_av = vec2mat(matrix2_e_m,6);
 matrix2_e_m_av =  matrix2_e_m_av';
 matrix2_e_m_av =  mean(matrix2_e_m_av);
 matrix2_e_m_av =  matrix2_e_m_av';
 
 matrix_1 = matrix_normalized(:,4) == 6;
 matrix2_e_l = matrix_normalized(matrix_1,5);
 matrix2_e_l_av = vec2mat(matrix2_e_l,6);
 matrix2_e_l_av =  matrix2_e_l_av';
 matrix2_e_l_av =  mean(matrix2_e_l_av);
 matrix2_e_l_av =  matrix2_e_l_av';
 
  matrix2_e = [matrix2_e_e_av, matrix2_e_m_av, matrix2_e_l_av];