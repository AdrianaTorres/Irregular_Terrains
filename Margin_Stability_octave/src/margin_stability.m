function b = margin_stability(r,u,t)
    
    % Parameters definition
    
    g = 10;             % Gravity
    l = 50;             % Subject's leg length
    w = sqrt(g/l);      % Angular Eigenfrequequency
   
    v = zeros(size(r,1)-1,2);
    v = [diff(r);interp1(t(1:length(v),:),v,length(r),'linear','extrap')]; % Velocity of the CoM projections
                                                                       % Extrapolation
                                                                       % needed

    XCOM = r + v/w;     % CoM affected by the velocity

    b = abs(max(u)-XCOM);
    
    

end