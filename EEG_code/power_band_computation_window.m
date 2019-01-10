function [ eeg_electrodes, strial ] = power_band_computation_window(edf_filename, ...
    window_size)
    %POWER_BAND_COMPUTATION Computes the power measured in each electrode for
    %each EEG frequency band (delta, lowtheta, hightheta...) for each trial. It
    %returns a structure.
    %Input parameters: 
    %edf_filename: Name of the edf file with the EEG recording of the subject
    %Output parameters:
    %eeg_electrodes: Cell-array 
    %   label: Name of the electrode (AF3,F3,...)
    %   trials: Cell-array
    %       raw_data: raw data of that trial
    %       Delta_power: Delta power computed between 1 and 4 Hz
    %       Lowtheta_power: Low Theta power computed between 4 and 6 Hz
    %       etc...

    eeglab
    
        
    
    %------------------------WAVE BANDS BOUNDARIES----------------
    
    %Delta Boundaries
    Delta_low = 2;
    Delta_high = 5;
    boundaries(1) = 2;
    boundaries(2) = 5;
    freq_label{1} = 'Delta';

    %Low Theta Boundaries
    Lowtheta_low = 5;
    Lowtheta_high = 6;
    boundaries(3) = 5;
    boundaries(4) = 6;
    freq_label{2} = 'Low Theta';

    %High Theta Boundaries
    Hightheta_low = 7;
    Hightheta_high = 9;
    boundaries(5) = 7;
    boundaries(6) = 9;
    freq_label{3} = 'High Theta';
    
    %Theta Boundaries
    Theta_low = 5;
    Theta_high = 9;
    boundaries(7) = 5;
    boundaries(8) = 9;
    freq_label{4} = 'Theta';
    
    %Low Alpha Boundaries
    Lowalpha_low = 9;
    Lowalpha_high = 11;
    boundaries(9) = 9;
    boundaries(10) = 11;
    freq_label{5} = 'Low Alpha';
    

    %High Alpha Boundaries
    Highalpha_low = 12;
    Highalpha_high = 14;
    boundaries(11) = 12;
    boundaries(12) = 14;
    freq_label{6} = 'High Alpha';

    %Alpha Boundaries
    Alpha_low = 9;
    Alpha_high = 14;
    boundaries(13) = 9;
    boundaries(14) = 14;
    freq_label{7} = 'Alpha';

    %Low Beta Boundaries
    Lowbeta_low = 14;
    Lowbeta_high = 21;
    boundaries(15) = 14;
    boundaries(16) = 21;
    freq_label{8} = 'Low Beta';

    %High Beta Boundaries
    Highbeta_low = 22;
    Highbeta_high = 36;
    boundaries(17) = 22;
    boundaries(18) = 36;
    freq_label{9} = 'High Beta';
    
    %Beta Boundaries
    Beta_low = 14;
    Beta_high = 25;
    boundaries(19) = 14;
    boundaries(20) = 25;
    freq_label{10} = 'Beta';
    
    %Gamma Boundaries
    boundaries(21) = 25;
    boundaries(22) = 50;
    freq_label{11} = 'Gamma';

    
    
    %-----------------LOAD EEG DATA INTO STRUCTURE---------------------
    
    %Reading EDF data
    [data, header] = ReadEDF(edf_filename);

    %Compute duration of file
    disp(['La duración del file es: ',...
        num2str(length(data{1})/header.samplerate(1))]);

    %Compute samplerate from the header
    fs = header.samplerate(1);
    
    %------------INITIALIZE STRUCTUREs--------------
    eeg_electrodes = initialize_structure(data,header,freq_label);
    strial = cell(length(header.annotation.event)/2,1);
    
    %------------FILL THE STRUCTURES----------------
    n=1;
    %The first loop is across all the diferent type of events
    for i=1:2:length(header.annotation.event)
        %Save information related to the event
        strial{n}.firstannotation_type = header.annotation.event{i};
        strial{n}.starttime_first_annotation = ... 
            header.annotation.starttime(i);
        strial{n}.starttime_second_annotation = ...
            header.annotation.starttime(i+1);
        strial{n}.duration = strial{n}.starttime_second_annotation - ...
            strial{n}.starttime_first_annotation;
        
        %Loop across all the electrodes and compute freq band power for
        %each
        for j=1:length(data)
            %Sometimes, some errors with the tags can arise while recording
            %using Openvibe, this conditionals for here take that into
            %account
            if (ceil(strial{n}.starttime_first_annotation*fs) < length(data{j}))
                if (ceil(strial{n}.starttime_second_annotation*fs) > length(data{j}))
                    eeg_electrodes{j}.trials{n}.raw_data = ... 
                        data{j}((ceil(strial{n}.starttime_first_annotation*fs)):...
                        end); 
                else
                    eeg_electrodes{j}.trials{n}.raw_data = ... 
                        data{j}((ceil(strial{n}.starttime_first_annotation*fs)):...
                        (ceil(strial{n}.starttime_second_annotation*fs))); 
                end
                if length(eeg_electrodes{j}.trials{n}.raw_data) > fs
                    %If there is no window size it computes the whole trial
                    if isempty(window_size)
                        fft_func = spectopo_mod(eeg_electrodes{j}.trials{n}.raw_data',...
                            length(eeg_electrodes{j}.trials{n}.raw_data),fs);
                        indexBoundaries = 1;
                        for m=1:length(eeg_electrodes{j}.trials{n}.freq_bands)
                            eeg_electrodes{j}.trials{n}.freq_bands{m}.val = ...
                                mean(fft_func(boundaries(indexBoundaries):...
                                boundaries(indexBoundaries+1)));
                            indexBoundaries = indexBoundaries+2;
                        end
                    else 
                        %Split the signal in epochs
                        window = window_size;
                        wind_num = 1;
                        cont = 1;
                        for m=1:window*fs:length(eeg_electrodes{j}.trials{n}.raw_data)
                            if (m+window*fs-1 >= length(eeg_electrodes{j}.trials{n}.raw_data))
                                break;
                            end
                            %Number of epochs from the beginning that we discard
                            %due to possible noise
                            if cont > 1
                                fft_func = spectopo_mod(...
                                    eeg_electrodes{j}.trials{n}.raw_data(m:m+window*fs-1)',...
                                    length(eeg_electrodes{j}.trials{n}.raw_data(m:m+window*fs-1)),...
                                    fs);
                                indexBoundaries = 1;
                                for f=1:length(eeg_electrodes{j}.trials{n}.freq_bands) 
                                    eeg_electrodes{j}.trials{n}.freq_bands{f}.val(wind_num) = ...
                                        mean(fft_func(boundaries(indexBoundaries):...
                                        boundaries(indexBoundaries+1)));
                                    indexBoundaries = indexBoundaries+2;
                                end

                                wind_num = wind_num + 1;
                            end
                            cont = cont + 1;
                        end
                    end %Close else if isempty
                end %if length of raw_data is bigger than Fs
            end % Close Error condition starttime first trial
        end % Close for loop
        n=n+1;
    end

    close;
   


end



    % Initialize electrodes function
    function eeg_electrodes = initialize_structure(data,header,freq_label)
         % Initialize eeg_electrodes
        eeg_electrodes = cell(length(data),1);

        %Apply labeling to each electrode according to the EDF file
        for j=1:length(data)
            eeg_electrodes{j}.label = header.labels{j};
            eeg_electrodes{j}.trials =...
                cell(length(header.annotation.event)/2,1);
            for i=1:length(eeg_electrodes{j}.trials)
                eeg_electrodes{j}.trials{i}.freq_bands = ...
                    cell(length(freq_label),1);
                for m=1:length(freq_label)
                    eeg_electrodes{j}.trials{i}.freq_bands{m}.freq_label =...
                        freq_label{m};
                end
            end
        end
    end

