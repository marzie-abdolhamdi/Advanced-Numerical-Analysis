function [R,X,Y] = que50(f,I,y1,h)

% 4th order Range-kutta method
% input values:
% f = input('Enter function f(x,y) = ','s');
% I = input('Specify the interval [a,b] = ');
% y1= input('Provide the initial point y(a) = ');
% h = input('Enter the step size h = ' ) ;

a = I(1); b=I(2);

f = str2func(['@(x,y)',f]);
X = a:h:b;
M = length(X)-1 ;
Y = zeros(1,M);
Y(1) = y1;

for j=1:M
   k1=h*feval(f,X(j),Y(j));
   k2=h*feval(f,X(j)+h/2,Y(j)+k1/2);
   k3=h*feval(f,X(j)+h/2,Y(j)+k2/2);
   k4=h*feval(f,X(j)+h,Y(j)+k3);
   Y(j+1)=Y(j)+(k1+2*k2+2*k3+k4)/6;
end

R =Y(end) ;

end