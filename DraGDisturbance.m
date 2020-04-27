clc;clear all;
% function Voltage = fcn(Throttle , Pitch , Roll , Yaw)
c=0;
Throttle = 50; Pitch = 0; Roll=0 ; Yaw=0;
if (Pitch+Roll+Yaw)/2   >   100 - Throttle
 c = (Pitch+Roll+Yaw)/2 -(100 - Throttle);
end

if (Pitch+Roll+Yaw)/2   >  Throttle
    if   c<  (Pitch+Roll+Yaw)/2   -  Throttle
        c =  (Pitch+Roll+Yaw)/2   -  Throttle;
    end
end

Pitch = Pitch -(c/3)*2;
Roll = Roll -(c/3)*2;
Yaw = Yaw -(c/3)*2;

Voltage = [(Throttle -  (Pitch+Roll+Yaw)/2)*11.4/100 ,(Throttle -  (Pitch-Roll-Yaw)/2)*11.4/100, (Throttle -  (-Pitch-Roll+Yaw)/2)*11.4/100 , (Throttle -  (-Pitch+Roll-Yaw)/2)*11.4/100];
