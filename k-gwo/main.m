clc;
clear;
close all;
A=load('fisheriris.mat');
data=A.meas;

 
k=3; %clusters
Function_name='F1';
SearchAgents_no=40; % Number of search agents
Max_iteration=400; % Maximum numbef of iterations

[lb,ub,dim,fobj]=Get_Functions_details(Function_name,data,k);
[Best_score,Best_pos,GWO_cg_curve]=GWO(SearchAgents_no,Max_iteration,lb,ub,dim,fobj,data,k);

display(['The best solution obtained by GWO is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by GWO is : ', num2str(Best_score)]);

        

nd=size(data,2);
k=size(Best_pos,2)/nd;
ds=zeros(k,nd);
for i=1:k
    for j=1:nd
        ds(i,j)=Best_pos(1,nd*(i-1)+j);
    end
end

[o,dmin,ind] = checking(Best_pos,data);
csvwrite('ir.csv',ind);