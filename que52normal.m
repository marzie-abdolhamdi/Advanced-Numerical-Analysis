% normal distribution table using que50 function:

h = 10^-9 ; 
f = '1/sqrt(2*pi) * exp(-x^2/2)' ;
t = cputime ;
A = zeros(10,31) ; 

for i = 1:31
    for j=1:10
        if i~=1 || j~=1
            A(10*i+j-10) = que50(f,[.1*i+0.01*j-0.11,.1*i+0.01*j-0.1]...
                            ,A(10*i+j-11),h) ;
        end
    end
end
plot(0:0.01:3.09,A(1:end))
hold on
grid on
display(num2str(cputime-t))
A_table= array2table(A);