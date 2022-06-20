function convertBFormToMSStereo(filename)
% read in B-format IR and convert to mid-side stereo

% Read in wavfile specified by filename
[WXYZ,fs] = audioread(filename);

% separate into spearate channels

L = WXYZ(:,1) + 0.707*WXYZ(:,3);    % Left channel mid-side decode
R = WXYZ(:,1) - 0.707*WXYZ(:,3);    % Right channel mid-side decode

 
% make stereo output
stereoOut = [L R];
stereoOut = stereoOut./max(max(abs(stereoOut)));

% write to wav
filenameOut = strcat('StereoMS_',filename);

audiowrite(filenameOut,real(stereoOut),fs);

end 