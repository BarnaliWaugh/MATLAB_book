clear;
Array=csvread ('MicrographCTF-Fitting.csv');
col2 = Array (:, 2);
n = numel(col2);

m=1;
for ii = 1:0.1:5
    A(m) = ii;
    m=m+1;
end
num=numel(A);
A=zeros(num,1);
s=1;
     for max = 1:0.1:5
         min = max-0.1;
         for ii = 1:n
            if ((col2(ii) > min) && (col2(ii) <= max))
               A(s,1) = A(s,1)+1;
            end
         
          end
           s=s+1;
       end

Col3 = 1:0.1:5;
Col4 = A(:,1);
B(:,1)=Col3;
B(:,2)=A(:,1);
disp(B)

bar(Col3, Col4)
title('Micrograph-CTF-fitting')
xlabel('Highest spacings in Angstrom to which CTF rings could be fitted successfully')
ylabel('Micrographs')

