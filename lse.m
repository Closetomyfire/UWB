close all;
clc;
data=xlsread('test.csv');
for i=1:1:size(data)
    d1=data(i,1);d2=data(i,2);d3=data(i,3);d4=data(i,4);
    result(i,1:2)=lsposition(0,0,d1,6,0,d2,6,2,d3,0,2,d4);
end
for i=1:1:size(data)
    summse(i)=(data(i,5)-result(i,1)).^2+ (data(i,6)-result(i,2)).^2;
    sumdis(i)=sqrt((data(i,5)-result(i,1)).^2+ (data(i,6)-result(i,2)).^2);
end
mse=sum(summse)/size(data,1);
rmse=sqrt(mse);
disp(rmse);

