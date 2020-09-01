% vicon = ViconNexus

% Get subject name and gait parameters.
% name = vicon.GetSubjectNames;

leftCadence = 105.263;%vicon.GetAnalysisParam(name{1}, 'LeftCadence');
leftWalkingSpeed = 0.950997;%vicon.GetAnalysisParam(name{1}, 'LeftWalking Speed');
leftStepTime = 0.58;%vicon.GetAnalysisParam(name{1}, 'LeftStep Time');
leftFootOff = 58.7719;%vicon.GetAnalysisParam(name{1}, 'LeftFoot Off');
leftSingleSupport = 0.42;%vicon.GetAnalysisParam(name{1}, 'LeftSingle Support');
leftDoubleSupport = 0.25;%vicon.GetAnalysisParam(name{1}, 'LeftDouble Support');
leftStepLength = 0.528459;%vicon.GetAnalysisParam(name{1}, 'LeftStep Length');  
leftStepWidth = 0.267468;%vicon.GetAnalysisParam(name{1}, 'LeftStep Width');


rightCadence = 113.208;%vicon.GetAnalysisParam(name{1}, 'RightCadence');
rightWalkingSpeed = 0.944976;%vicon.GetAnalysisParam(name{1}, 'RightWalking Speed');
rightStepTime = 0.56;%vicon.GetAnalysisParam(name{1}, 'RightStep Time');
rightFootOff = 60.3773;%vicon.GetAnalysisParam(name{1}, 'RightFoot Off');
rightSingleSupport = 0.38;%vicon.GetAnalysisParam(name{1}, 'RightSingle Support');
rightDoubleSupport = 0.26;%vicon.GetAnalysisParam(name{1}, 'RightDouble Support');
rightStepLength = 0.550874;%vicon.GetAnalysisParam(name{1}, 'RightStep Length'); 
rightStepWidth = 0.277224;%vicon.GetAnalysisParam(name{1}, 'RightStep Width');

cadenceVariability = variability(leftCadence, rightCadence);
walkingSpeedVariability = variability(leftWalkingSpeed, rightWalkingSpeed);
stepTimeVariability = variability(leftStepTime, rightStepTime);
footOffVariability = variability(leftFootOff, rightFootOff);
singleSupportVariability = variability(leftSingleSupport, rightSingleSupport);
doubleSupportVariability = variability(leftDoubleSupport, rightDoubleSupport);
stepLengthVariability = variability(leftStepLength, rightStepLength);
stepWidthVariability = variability(leftStepWidth, rightStepWidth);

cadenceVariability = abs(cadenceVariability)
walkingSpeedVariability = abs(walkingSpeedVariability)
stepTimeVariability = abs(stepTimeVariability)
footOffVariability = abs(footOffVariability)
singleSupportVariability = abs(singleSupportVariability)
doubleSupportVariability = abs(doubleSupportVariability)
stepLengthVariability = abs(stepLengthVariability)
stepWidthVariability = abs(stepWidthVariability)

