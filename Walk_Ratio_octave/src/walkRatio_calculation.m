function walkRatio_calculation(file, outputFolder)

data = read_simple_yaml(file);

left_cadence = data{1,1};
left_cadence = str2double(left_cadence);
left_walkingSpeed = data{2,1};
left_walkingSpeed = str2double(left_walkingSpeed);
left_strideTime = data{3,1};
left_strideTime = str2double(left_strideTime);
left_stepTime = data{4,1};
left_stepTime = str2double(left_stepTime);
left_strideLength = data{5,1};
left_strideLength = str2double(left_strideLength);
left_stepLength = data{6,1};
left_stepLength = str2double(left_stepLength);
left_stepWidth = data{7,1};
left_stepWidth = str2double(left_stepWidth);
left_singleSupport = data{8,1};
left_singleSupport = str2double(left_singleSupport);
rigth_cadence = data{9,1};
rigth_cadence = str2double(rigth_cadence);
rigth_walkingSpeed = data{10,1};
rigth_walkingSpeed = str2double(rigth_walkingSpeed);
rigth_strideTime = data{11,1};
rigth_strideTime = str2double(rigth_strideTime);
rigth_stepTime = data{12,1};
rigth_stepTime = str2double(rigth_stepTime);
rigth_strideLength = data{13,1};
rigth_strideLength = str2double(rigth_strideLength);
rigth_stepLength = data{14,1};
rigth_stepLength = str2double(rigth_stepLength);
rigth_stepWidth = data{15,1};
rigth_stepWidth = str2double(rigth_stepWidth);
rigth_singleSupport = data{16,1};
rigth_singleSupport = str2double(rigth_singleSupport);
doubleSupport = data{17,1};
doubleSupport = str2double(doubleSupport);

gaitParameters = [left_cadence, left_walkingSpeed, left_strideTime, left_stepTime, left_strideLength, left_stepLength, left_stepWidth, left_singleSupport, rigth_cadence,rigth_walkingSpeed, rigth_strideTime, rigth_stepTime, rigth_strideLength, rigth_stepLength, rigth_stepWidth, rigth_singleSupport, doubleSupport];

#Walk ratio calculation.
left_walkRatio = walkRatio(gaitParameters(6), gaitParameters(1));
rigth_walkRatio = walkRatio(gaitParameters(14), gaitParameters(9));

#Put the results into a file.
filename = strcat(outputFolder, "/", "WalkRatio", ".yaml");

wr_labels = "'Right Walk Ratio', 'Left Walk Ratio'";
wr_data = [rigth_walkRatio, left_walkRatio];

store_vector_result(filename, wr_data, wr_labels);
