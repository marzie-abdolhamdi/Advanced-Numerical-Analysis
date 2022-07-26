function que512

clc
close all
format long 
% 4th order range-kutta method for h=10^-9
h = 10^-9 ;

% solving y'=x+y
t = cputime ;
f = 'x+y'
[~,x_r,y_r] = que50(f,[0,1],0,h) ;
figure(11),plot(x_r,y_r)
xlabel(['solved using RK4 in ',num2str(cputime-t),' seconds'])
grid on
disp('y(1) ~ ')
disp(y_r(end))
title(['dy/dx = ',f])
%Checking MATLAB function ode45
F_xy = @(x,y) x+y;
[x_c,y_c] = ode45(F_xy,0:h:1,0);
%Plot in one figure
figure(12)
plot(x_r,y_r)
hold on
plot(x_c,y_c)
hold off
grid on
y_c2=y_c';
%error
disp('Error between Runge-Kutta and ode45')
err = immse(y_r,y_c2)

disp('_____________________________')

% solving y'=exp(-x^2)
t = cputime ;
f = 'exp(-x^2)'
[~,x_r,y_r] = que50(f,[0,1],0,h) ;
figure(21),plot(x_r,y_r)
xlabel(['solved using RK4 in ',num2str(cputime-t),' seconds'])
grid on
disp('y(1) ~ ')
disp(y_r(end))
title(['dy/dx = ',f])
%Checking MATLAB function ode45
F_xy = @(x,y) exp(-x^2) ;
[x_c,y_c] = ode45(F_xy,0:h:1,0);
%Plot in one figure
figure(22)
plot(x_r,y_r)
hold on
plot(x_c,y_c)
hold off
grid on
y_c2=y_c';
%error
disp('Error between Runge-Kutta and ode45')
err = immse(y_r,y_c2)

disp('_____________________________')

% solving y'=x*sin(y)
t = cputime ;
f = 'x*sin(y)'
[~,x_r,y_r] = que50(f,[0,1],0,h) ;
figure(31),plot(x_r,y_r)
xlabel(['solved using RK4 in ',num2str(cputime-t),' seconds'])
grid on
disp('y(1) ~ ')
disp(y_r(end))
title(['dy/dx = ',f])
%Checking MATLAB function ode45
F_xy = @(x,y) x*sin(y) ;
[x_c,y_c] = ode45(F_xy,0:h:1,0);
%Plot in one figure
figure(32)
plot(x_r,y_r)
hold on
plot(x_c,y_c)
hold off
grid on
y_c2=y_c';
%error
disp('Error between Runge-Kutta and ode45')
err = immse(y_r,y_c2)


end