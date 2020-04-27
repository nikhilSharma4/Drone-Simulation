% function Accerleration = fcn(F, Disturbance, Theta, Velocity)
% function Accerleration = fcn( F, Disturbance , Theta, Velocity)
 clear all;
F=[3.24895539490273,3.24895539490273,3.24895539490273,3.24895539490273]; Disturbance = [0 0 0]; Theta = [0 0 0 ]; Velocity = [0 0 0];

m = .743;
cd = 1;
A= [0.0197 0.0197 .0512];
g= 9.81;
rho = 1.225;

Accerleration = [0 0 0];Force= [0 0 0]; Fprop = [0 0 0 ];

Fprop(1) = (F(1)+F(2)+F(3)+F(4))*sin(Theta(2)) * cos(Theta(1)); 
Fprop(2) = (F(1)+F(2)+F(3)+F(4))*sin(Theta(1)) * cos(Theta(2));
Fprop(3) = (F(1)+F(2)+F(3)+F(4))*cos(Theta(2)) * cos(Theta(1));

    ThetaXY = -atan(Fprop(1),Fprop(2));
XY2D = sqrt( Fprop(1)^2  +  Fprop(2)^2);

if Fprop(3)>=0
    Fprop(1) = XY2D * sin(ThetaXY + Theta(3));
    Fprop(2) = XY2D * cos(ThetaXY + Theta(3));
else
    Fprop(1) = XY2D * sin(ThetaXY - Theta(3));
    Fprop(2) = XY2D * cos(ThetaXY - Theta(3));
end

if Velocity(1)<=0
   Force(1) = Fprop(1) - Disturbance(1) + (.5*rho*power(Velocity(1),2)*A(1)* cd); 
else
   Force(1) = Fprop(1) - Disturbance(1) - (.5*rho*power(Velocity(1),2)*A(1)* cd); 
end


if Velocity(2)<=0
   Force(2) = Fprop(2) - Disturbance(2) + (.5*rho*power(Velocity(2),2)*A(2)* cd); 
else
   Force(2) = Fprop(2) - Disturbance(2) - (.5*rho*power(Velocity(2),2)*A(2)* cd); 
end

if Velocity(3)<=0
   Force(3) = Fprop(3) - Disturbance(3) + (.5*rho*power(Velocity(3),2)*A(3)* cd) - (m*g); 
else
   Force(3) = Fprop(3) - Disturbance(3) - (.5*rho*power(Velocity(3),2)*A(3)* cd) - (m*g); 
end

for i=1:3
    Accerleration(i) = Force(i)/m;
end
