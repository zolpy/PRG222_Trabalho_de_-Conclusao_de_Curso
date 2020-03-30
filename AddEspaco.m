clc;
clear all;
close all;

Ler = load('Escreve.txt');
Escreve = fopen('Escreve8.txt','wt');

for i=1:size(Ler)
%         porcentagem=Ler(i,:);%Passar para porcentagem
%         porcem=porcentagem/100;
%         fprintf('%.4f\n',porcem)
%         fprintf(Escreve,'%.4f\n',porcem);
    
    fprintf('%.2f\n',Ler(i,:))
    fprintf(Escreve,'%.1f\n',Ler(i,:));
    for j=1:1:3
        fprintf(' \n')
        fprintf(Escreve,' \n');
    end
    
    
end
fclose(Escreve);





