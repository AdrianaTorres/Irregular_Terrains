#Walk ratio and ratio index calculation

function ratioIndex_calculation (file, outputFolder)

data = read_simple_yaml(file);

left_cadence = data{2,1};
left_cadence = str2double(left_cadence);
left_walkingSpeed = data{3,1};
left_walkingSpeed = str2double(left_walkingSpeed);
left_strideTime = data{4,1};
left_strideTime = str2double(left_strideTime);
left_stepTime = data{5,1};
left_stepTime = str2double(left_stepTime);
left_strideLength = data{6,1};
left_strideLength = str2double(left_strideLength);
left_stepLength = data{7,1};
left_stepLength = str2double(left_stepLength);
left_stepWidth = data{8,1};
left_stepWidth = str2double(left_stepWidth);
left_singleSupport = data{9,1};
left_singleSupport = str2double(left_singleSupport);
rigth_cadence = data{10,1};
rigth_cadence = str2double(rigth_cadence);
rigth_walkingSpeed = data{11,1};
rigth_walkingSpeed = str2double(rigth_walkingSpeed);
rigth_strideTime = data{12,1};
rigth_strideTime = str2double(rigth_strideTime);
rigth_stepTime = data{13,1};
rigth_stepTime = str2double(rigth_stepTime);
rigth_strideLength = data{14,1};
rigth_strideLength = str2double(rigth_strideLength);
rigth_stepLength = data{15,1};
rigth_stepLength = str2double(rigth_stepLength);
rigth_stepWidth = data{16,1};
rigth_stepWidth = str2double(rigth_stepWidth);
rigth_singleSupport = data{17,1};
rigth_singleSupport = str2double(rigth_singleSupport);
doubleSupport = data{18,1};
doubleSupport = str2double(doubleSupport);

gaitParameters = [left_cadence, left_walkingSpeed, left_strideTime, left_stepTime, left_strideLength, left_stepLength, left_stepWidth, left_singleSupport, rigth_cadence,rigth_walkingSpeed, rigth_strideTime, rigth_stepTime, rigth_strideLength, rigth_stepLength, rigth_stepWidth, rigth_singleSupport, doubleSupport];

#Ratio index calculation.
ratio_index = [];

for i=1:((size(gaitParameters) (2) - 1)/2)
    ratio_index = [ratio_index ratioIndex(gaitParameters(i), gaitParameters(i+8))];
endfor

#Put the results into a file.
ri = "Ratio index:\n";
ri_title = "'cadence', 'walking_speed', 'stride_time', 'step_time', 'stride_length', 'step_length', 'step_width', 'single_support'";

filename = strcat(outputFolder, "/", "RatioIndex", ".yaml")

store_result(filename, ri, ratio_index, ri_title);
