%% Hippopotamus Optimization (HO) Algorithm: A Novel Nature-Inspired Optimisation Algorithm
%% Scientific Reports
%% (1) Mohammad Hussein Amiri, %(1) Nastaran Mehrabi Hashjin, %(1) Mohsen Montazeri and %(2) Seyedali Mirjalili, %(3)Nima Khodadadi
%% (1) Faculty of Electrical Engineering, Shahid Beheshti University, Tehran, Iran
%% (2) Centre for Artificial Intelligence Research and Optimization, Torrens University Australia, Sydney, Australia
%% (3) Department of Civil and Architectural Engineering, University of Miami, Coral Gables, FL, 33146, USA 
%% cite : https://doi.org/10.1038/s41598-024-54910-3
%% Email: nima.khodadadi@miami.edu, Website: https://nimakhodadadi.com





clc
clear
close all
Fun_name='F2';                     % number of test functions: 'F1' to 'F23'
SearchAgents=16;                     % number of Hippopotamus (population members)
Max_iterations=500;                     % maximum number of iteration
[lowerbound,upperbound,dimension,fitness]=fun_info(Fun_name);                     % Object function
[Best_score,Best_pos,HO_curve]=HO(SearchAgents,Max_iterations,lowerbound,upperbound,dimension,fitness);

display(['The best solution obtained by HO for ' [num2str(Fun_name)],'  is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by HO  for ' [num2str(Fun_name)],'  is : ', num2str(Best_score)]);

figure=gcf;
semilogy(HO_curve,'Color','#b28d90','LineWidth',2)
xlabel('Iteration');
ylabel('Best score obtained so far');
box on
set(findall(figure,'-property','FontName'),'FontName','Times New Roman')
legend('HO')

