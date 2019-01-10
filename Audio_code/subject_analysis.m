
function [pitch_instab, dyn_instab, aperiodicity] = subject_analysis(numtrials,name_subject,plot_bol)
    %Function to compute pitch stability, dynamic stability and aperiodicity
    %of the violin sound of the experiment.
    %
    %Input Parameters:
    %numtrials: Number of trials the subject realized.
    %name_subject: Name of the subject that appears in the folder of trials
    % (The folder of trials must be in the same folder where the script it
    % is.)
    %plot_bol: if 1 plot the result of the descriptors for each trial.
    %fs: Sample Rate (44100 by default)
    %Output Parameters:
    %pitch_stab = Pitch stability descriptor (computed by using Yin
    %algorithm)
    %dyn_stab = Dynamic stability descriptor (Computed by using RMS value
    %aperiodicity = Aperiodicity measure of Yin algorithm

    %Add the yin folder
    addpath(genpath('yin'))

    %Initialize Audio Descriptors
    pitch_instab = zeros(numtrials,1)';
    dyn_instab = zeros(numtrials,1)';
    timbre_stab = zeros(numtrials,1)';
    aperiodicity = zeros(numtrials,1)';
    
    %Open waitbar
    h=waitbar(0,'Computing features for each audio recorded...');
    set(h,'Name','Audio Analysis progress bar');
    
    %We compute the descriptors for each trial
    for i=1:numtrials
        %We read the file
        [x,fs] = audioread(['Subjects\',name_subject,'_Trials\',name_subject,'_',num2str(i),'_trial.wav']);
        %Convert to mono
        x_mono = (x(:,1)+x(:,2))/2;
        %Normalize Energy levels
        x_mono = x_mono/max(x_mono);
        %Compute yin algorithm
        R = struct;
        R = yin(x_mono,fs);
        %Extract relevant values of f0
        f0=R.f0(~isnan(R.f0));
        %Extract relevant values of power
        Pwr = R.pwr(~isnan(R.pwr));
        %Convert power to Decibels
        Pwr_Db = 10*log10(Pwr);
        %Extract aperiodicity values
        ap = R.ap(~isnan(R.ap));
        %Compute Descriptors
        pitch_instab(i) = std(f0);
        dyn_instab(i)   = std(Pwr_Db);
        aperiodicity(i) = mean(ap);
        %Add step in waitbar
        waitbar(i/numtrials,h,[num2str(i) 'Trial']);
    end
    %Close Waitbar
    close(h)
    %If plot_bol == 1 plot graphs
    if (plot_bol)
        figure
        subplot(2,2,1)
        plot(pitch_instab);
        title('Pitch Instability')
        hold on
        subplot(2,2,2);
        plot(dyn_instab);
        title('Dynamic Instability')
        hold on
        subplot(2,2,3);
        plot(aperiodicity);
        title('Aperiodicity');
        subplot(2,2,4);
        plot(timbre_stab);
        title('Timbre Stability');
        hold on
    end

end