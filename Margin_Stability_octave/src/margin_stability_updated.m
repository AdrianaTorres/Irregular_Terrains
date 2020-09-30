function y = marginOfStability(legLength, BoS, CoM, v_CoM)
    g = 9.8;                    % Gravity
    w = sqrt(g/legLength);      % Angular Eigenfrequequency
    
    XCoM = CoM + (v_CoM/w);    % Extrapolated centre of mass
    
    y = abs(BoS - XCoM);
end
