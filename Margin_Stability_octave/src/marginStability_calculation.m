#Margin of stability calculation

function marginStability_calculation (file1, file2, file3, file4, outputFolder)

fid1 = fopen(file1, "r");
fid2 = fopen(file2, "r");
fid3 = fopen(file3, "r");

centerOfMass = csvread(fid1);
time_com = round(centerOfMass(1:end, 1)*100);
com = centerOfMass(1:end, 2);
vel_com = centerOfMass(1:end, 5);

ge = csvread(fid2);
rightHeelStrike = ge(1:end, 1);
leftHeelStrike = ge(1:end, 2);

right_heelStrike = [];
left_heelStrike = [];
for i=1:size(rightHeelStrike)
  if (rightHeelStrike(i) != 0)
    right_heelStrike = [right_heelStrike rightHeelStrike(i)];
  endif
endfor

for i=1:size(leftHeelStrike)
  if (leftHeelStrike(i) != 0)
    left_heelStrike = [left_heelStrike leftHeelStrike(i)];
  endif
endfor

ft = csvread(fid3);
time_ft = round(ft(1:end, 1)*100);
rightMBoS = ft(1:end, 20);
rightLBoS = ft(1:end, 14);
rightABoS = ft(1:end, 2);
rightPBoS = ft(1:end, 8);

leftMBoS = ft(1:end, 23);
leftLBoS = ft(1:end, 17);
leftABoS = ft(1:end, 5);
leftPBoS = ft(1:end, 11);


ant = read_simple_yaml(file4);
rightLegLength = ant{11,1}; 
rightLegLength = str2num(rightLegLength);
leftLegLength = ant{4,1};
leftLegLength = str2num(leftLegLength);

#Get the CoM, CoM velocity and BoS at heel strike. 
right_com = [];
left_com = [];
right_vel_com = [];
left_vel_com = [];

for i = 1:size(time_com)
  for j = 1:size(right_heelStrike)(2)
    if (right_heelStrike(j) != 0 && right_heelStrike(j) == time_com(i))
      right_com = [right_com com(i)];  
      right_vel_com = [right_vel_com vel_com(i)];
    endif
  endfor
endfor


for i = 1:size(time_com)
  for j = 1:size(left_heelStrike)(2)
    if (left_heelStrike(j) != 0 && left_heelStrike(j) == time_com(i)) 
      left_com = [left_com com(i)];  
      left_vel_com = [left_vel_com vel_com(i)];
    endif
  endfor
endfor

right_MBoS = [];
right_LBoS = [];
right_ABoS = [];
right_PBoS = [];

left_MBoS = [];
left_LBoS = [];
left_ABoS = [];
left_PBoS = [];

for i = 1:size(time_ft)
  for j = 1:size(right_heelStrike)(2)
    if (right_heelStrike(j) == time_ft(i))
      right_MBoS = [right_MBoS rightMBoS(i)];  
    endif
  endfor
endfor

for i = 1:size(time_ft)
  for j = 1:size(right_heelStrike)(2)
    if (right_heelStrike(j) == time_ft(i))
      right_LBoS = [right_LBoS rightLBoS(i)];  
    endif
  endfor
endfor

for i = 1:size(time_ft)
  for j = 1:size(right_heelStrike)(2)
    if (right_heelStrike(j) == time_ft(i))
      right_ABoS = [right_ABoS rightABoS(i)];  
    endif
  endfor
endfor

for i = 1:size(time_ft)
  for j = 1:size(right_heelStrike)(2)
    if (right_heelStrike(j) == time_ft(i))
      right_PBoS = [right_PBoS rightPBoS(i)];  
    endif
  endfor
endfor

for i = 1:size(time_ft)
  for j = 1:size(left_heelStrike)(2)
    if (left_heelStrike(j) == time_ft(i))
      left_MBoS = [left_MBoS leftMBoS(i)];  
    endif
  endfor
endfor

for i = 1:size(time_ft)
  for j = 1:size(left_heelStrike)(2)
    if (left_heelStrike(j) == time_ft(i))
      left_LBoS = [left_LBoS leftLBoS(i)];  
    endif
  endfor
endfor

for i = 1:size(time_ft)
  for j = 1:size(left_heelStrike)(2)
    if (left_heelStrike(j) == time_ft(i))
      left_ABoS = [left_ABoS leftABoS(i)];  
    endif
  endfor
endfor

for i = 1:size(time_ft)
  for j = 1:size(left_heelStrike)(2)
    if (left_heelStrike(j) == time_ft(i))
      left_PBoS = [left_PBoS leftPBoS(i)];  
    endif
  endfor
endfor

#Margin of stability calculation.

rightMMoS = marginOfStability(rightLegLength, right_MBoS, right_com, right_vel_com);
rightMMoS = sum(rightMMoS)/length(rightMMoS)
rightLMoS = marginOfStability(rightLegLength, right_LBoS, right_com, right_vel_com);
rightLMoS = sum(rightLMoS)/length(rightLMoS)
rightAMoS = marginOfStability(rightLegLength, right_ABoS, right_com, right_vel_com);
rightAMoS = sum(rightAMoS)/length(rightAMoS)
rightPMoS = marginOfStability(rightLegLength, right_PBoS, right_com, right_vel_com);
rightPMoS = sum(rightPMoS)/length(rightPMoS)

leftMMoS = marginOfStability(leftLegLength, left_MBoS, left_com, left_vel_com);
leftMMoS = sum(leftMMoS)/length(leftMMoS)
leftLMoS = marginOfStability(leftLegLength, left_LBoS, left_com, left_vel_com);
leftLMoS = sum(leftLMoS)/length(leftLMoS)
leftAMoS = marginOfStability(leftLegLength, left_ABoS, left_com, left_vel_com);
leftAMoS = sum(leftAMoS)/length(leftAMoS)
leftPMoS = marginOfStability(leftLegLength, left_PBoS, left_com, left_vel_com);
leftPMoS = sum(leftPMoS)/length(leftPMoS)

#Put the results into a file.

mos = "Margin of Stability:\n";
mos_titles = "'Right Medial Margin of Stability', 'Right Lateral Margin of Stability', 'Right Anterior Margin of Stability', 'Right Posterior Margin of Stability', 'Left Medial Margin of Stability', 'Left Lateral Margin of Stability', 'Left Anterior Margin of Stability', 'Left Posterior Margin of Stability'";
mos_vector = [rightMMoS, rightLMoS, rightAMoS, rightPMoS, leftMMoS, leftLMoS, leftAMoS, leftPMoS];

cd (outputFolder);

store_result("Margin_of_Stability.yaml", mos, mos_vector, mos_titles);








