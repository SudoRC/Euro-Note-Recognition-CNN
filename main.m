% directory path containing bills in organized manner
datasetPath = fullfile(pwd, 'dataset');

% automatically label images based on folder names using
imds = imageDatastore(datasetPath, 'IncludeSubfolders', true, 'LabelSource', 'foldernames');

% the number of pictures of each note
labelCounts = countEachLabel(imds);
disp(labelCounts);