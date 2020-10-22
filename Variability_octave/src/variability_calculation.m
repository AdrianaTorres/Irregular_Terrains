# Variability calculation.

#Extract data (wearing the exoskeleton) from input.
cd C:\Users\adria\Datos_Adriana\EUROBENCH\Octave;

file1 = "GaitParameters_exo.yaml";

data_exo = read_simple_yaml(file1);

left_cadence_exo = data_exo{2,1};
left_cadence_exo = str2double(left_cadence_exo);
left_walkingSpeed_exo = data_exo{3,1};
left_walkingSpeed_exo = str2double(left_walkingSpeed_exo);
left_strideTime_exo = data_exo{4,1};
left_strideTime_exo = str2double(left_strideTime_exo);
left_stepTime_exo = data_exo{5,1};
left_stepTime_exo = str2double(left_stepTime_exo);
left_strideLength_exo = data_exo{6,1};
left_strideLength_exo = str2double(left_strideLength_exo);
left_stepLength_exo = data_exo{7,1};
left_stepLength_exo = str2double(left_stepLength_exo);
left_stepWidth_exo = data_exo{8,1};
left_stepWidth_exo = str2double(left_stepWidth_exo);
left_singleSupport_exo = data_exo{9,1};
left_singleSupport_exo = str2double(left_singleSupport_exo);
rigth_cadence_exo = data_exo{10,1};
rigth_cadence_exo = str2double(rigth_cadence_exo);
rigth_walkingSpeed_exo = data_exo{11,1};
rigth_walkingSpeed_exo = str2double(rigth_walkingSpeed_exo);
rigth_strideTime_exo = data_exo{12,1};
rigth_strideTime_exo = str2double(rigth_strideTime_exo);
rigth_stepTime_exo = data_exo{13,1};
rigth_stepTime_exo = str2double(rigth_stepTime_exo);
rigth_strideLength_exo = data_exo{14,1};
rigth_strideLength_exo = str2double(rigth_strideLength_exo);
rigth_stepLength_exo = data_exo{15,1};
rigth_stepLength_exo = str2double(rigth_stepLength_exo);
rigth_stepWidth_exo = data_exo{16,1};
rigth_stepWidth_exo = str2double(rigth_stepWidth_exo);
rigth_singleSupport_exo = data_exo{17,1};
rigth_singleSupport_exo = str2double(rigth_singleSupport_exo);
doubleSupport_exo = data_exo{18,1};
doubleSupport_exo = str2double(doubleSupport_exo);

gaitParameters_exo = [left_cadence_exo, left_walkingSpeed_exo, left_strideTime_exo, left_stepTime_exo, left_strideLength_exo, left_stepLength_exo, left_stepWidth_exo, left_singleSupport_exo, rigth_cadence_exo,rigth_walkingSpeed_exo, rigth_strideTime_exo, rigth_stepTime_exo, rigth_strideLength_exo, rigth_stepLength_exo, rigth_stepWidth_exo, rigth_singleSupport_exo, doubleSupport_exo];

#Extract data (no exoskeleton) from input.
file2 = "GaitParameters_noExo.yaml";

data_noExo = read_simple_yaml(file2);

left_cadence = data_noExo{2,1};
left_cadence = str2double(left_cadence);
left_walkingSpeed = data_noExo{3,1};
left_walkingSpeed = str2double(left_walkingSpeed);
left_strideTime = data_noExo{4,1};
left_strideTime = str2double(left_strideTime);
left_stepTime = data_noExo{5,1};
left_stepTime = str2double(left_stepTime);
left_strideLength = data_noExo{6,1};
left_strideLength = str2double(left_strideLength);
left_stepLength = data_noExo{7,1};
left_stepLength = str2double(left_stepLength);
left_stepWidth = data_noExo{8,1};
left_stepWidth = str2double(left_stepWidth);
left_singleSupport = data_noExo{9,1};
left_singleSupport = str2double(left_singleSupport);
rigth_cadence = data_noExo{10,1};
rigth_cadence = str2double(rigth_cadence);
rigth_walkingSpeed = data_noExo{11,1};
rigth_walkingSpeed = str2double(rigth_walkingSpeed);
rigth_strideTime = data_noExo{12,1};
rigth_strideTime = str2double(rigth_strideTime);
rigth_stepTime = data_noExo{13,1};
rigth_stepTime = str2double(rigth_stepTime);
rigth_strideLength = data_noExo{14,1};
rigth_strideLength = str2double(rigth_strideLength);
rigth_stepLength = data_noExo{15,1};
rigth_stepLength = str2double(rigth_stepLength);
rigth_stepWidth = data_noExo{16,1};
rigth_stepWidth = str2double(rigth_stepWidth);
rigth_singleSupport = data_noExo{17,1};
rigth_singleSupport = str2double(rigth_singleSupport);
doubleSupport = data_noExo{18,1};
doubleSupport = str2double(doubleSupport);

gaitParameters_noExo = [left_cadence, left_walkingSpeed, left_strideTime, left_stepTime, left_strideLength, left_stepLength, left_stepWidth, left_singleSupport, rigth_cadence,rigth_walkingSpeed, rigth_strideTime, rigth_stepTime, rigth_strideLength, rigth_stepLength, rigth_stepWidth, rigth_singleSupport, doubleSupport];

#Variability calculation.
variability_vector = [];

for i=1:size(gaitParameters_exo) (2);
    variability_vector = [variability_vector variability(gaitParameters_noExo(i), gaitParameters_exo(i))];
endfor

#Put the results into a file.
v = "Variability:\n";
v_title = "'left_cadence', 'left_walking_speed', 'left_stride_time', 'left_step_time', 'left_stride_length', 'left_step_length', 'left_step_width', 'left_single_support', 'rigth_cadence', 'rigth_walking_speed', 'rigth_stride_time', 'rigth_step_time', 'rigth_stride_length', 'rigth_step_length', 'rigth_step_width', 'rigth_single_support'";

store_result("Variability.yaml", v, variability_vector, v_title);

