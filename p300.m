%%%
% BCI INITIAL ASSIGNMENT
% P300 ANALYSIS

clear; clc

% read all session files 
[signal, state, parameters] = load_data();

sample_time = .8; %s
sample_rate = 240; % Hz
num_channels = 64;
num_samples = sample_rate * sample_time;

% For all channels, collect a 800ms of signal samples after the start of each
% intensification, i.e., whenever state.Flashing changes from 0 to 1 (note: each
% character epoch of the data set starts at the first flash, i.e. state.Flashing=1 for the
% first data sample in each epoch).

flashing = state.Flashing(2:end);
flashing2 = state.Flashing(1:end-1);
changes =[0; flashing - flashing2];

index = find(changes); %location of sdifferent intensifications 

data = zeros(num_samples, num_channels, length(index));

    for j = 1: length(index)
        data (:,:,j) = signal(index(j):index(j) + num_samples-1, :);
    end
    
% Compute the correlation between the state.StimulusType and the response
% amplitude for each time sample and channel.
data = permute(data,[3 1 2]); 

correlation = zeros(num_channels, num_samples);

for i = 1:num_channels
    for j = 1:num_samples
        correlation(i, j) = corr(squeeze(data(:, j, i)), double(state.StimulusType(index)));
    end
end

datavector = correlation(:, .1*sample_rate);

topoplot(datavector,'eloc64.txt','EEG');

        