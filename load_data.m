function [ signal, state, parameters, code] = load_data
%
% Call the function: [signal, state, parms] = load_data();
% to load in (possibly multiple) .dat files
%
%Load in multiple .dat files
signal=[]; state=struct([]); 
[files,dir] = uigetfile('*.dat','Select the .dat file(s)','multiselect','on');
if(~iscell(files))
    files=cellstr(files);
end
for kk = 1:length(files)
    disp(['Loading file ' num2str(kk) ' ...']);
    [sig, sts, prms] = load_bcidat([dir char(files(kk))]);
    gain=prms.SourceChGain.NumericValue;
    offset=prms.SourceChOffset.NumericValue;
    %concatenate signal from multiple files, multiply in the gains, and add
    %offsets
    signal=cat(1,signal,int16(repmat(gain',size(sig,1),1).* double(sig) + repmat(offset',size(sig,1),1)));
    %concatenate all of the fields in the state structure
    stateNames=fieldnames(sts);
    for jj = 1:length(stateNames);
        if(isfield(state, char(stateNames(jj)))==0)
            state(1).(char(stateNames(jj)))=sts.(char(stateNames(jj)));
        else
            state.(char(stateNames(jj)))=cat(1,state.(char(stateNames(jj))),sts.(char(stateNames(jj))));
        end
    end
    %save the parameters for each run (in case they differ)
    parameters(1,kk)=prms;
end