% function [Torque,F,current] = fcn(Voltage)
Voltage = [5.7 5.7 5.7 5.7];
RPM = [0 0 0 0];Torque = [0 0 0 0];F = [0 0 0 0];current = [0 0 0 0];
for i=1:4
RPM(i) = -2.6931*(power(Voltage(i),3))   +  1400* Voltage(i);
ct = (2*(power(10,-15))*(power(RPM(i),3)))+   (4*(power(10,-11))*(power(RPM(i),2)))+(3*(power(10,-7))*(RPM(i)))+.1013;
F(i) = ct * 1.225 * power((RPM(i)/60),2) * power(.2,4);
Torque(i) = (4*(power(10,-14))*(power(RPM(i),3))) +  (8*(power(10,-12))*(power(RPM(i),2)))  +  (3*(power(10,-6))*(RPM(i)));
current(i) = Torque(i) * 1400;
end


