clc;
clear all;
close all;

% Ler = load('Ler.txt');
Escreve = fopen('Escreve.txt','wt');

for i=1:2000
%         porcentagem=Ler(i,:);%Passar para porcentagem
%         porcem=porcentagem/100;
%         fprintf('%.4f\n',porcem)
        fprintf(Escreve,'Sem Leitura\n');
    
%     fprintf('%.2f\n',Ler(i,:))
%     fprintf(Escreve,'%.1f\n',Ler(i,:));
%     for j=1:17
%         fprintf(' \n')
%         fprintf(Escreve,' \n');
%     end
    
    
end
fclose(Escreve);





