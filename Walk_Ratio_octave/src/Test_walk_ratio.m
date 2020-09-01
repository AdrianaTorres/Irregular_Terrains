% vicon = ViconNexus

% Get subject name, left/right step lengths and cadence.
% name = vicon.GetSubjectNames;

leftSL = 0.52845*1000;%vicon.GetAnalysisParam(name{1}, 'LeftStep Length')*1000; % Multiplied by 1000 in order to get the parameter in mm instead of in m.
leftCadence = 105.263;%vicon.GetAnalysisParam(name{1}, 'LeftCadence');

rightSL = 0.550874*1000;%vicon.GetAnalysisParam(name{1}, 'RightStep Length')*1000; % Multiplied by 1000 in order to get the parameter in mm instead of in m.
rightCadence = 113.208;%vicon.GetAnalysisParam(name{1}, 'RightCadence');

% Calculate the walk ratio
leftWR = walkRatio(leftSL, leftCadence)
rightWR = walkRatio(rightSL, rightCadence)