clc;
clear all;
close all;
Ler = load('Teste.txt');
Escreve = fopen('Escreve.txt','wt');
for i=1:3:size(Ler) %começava a leitura no elemento 1
porcentagem=Ler(i,:); %quando estiver lendo arquivos de porcentagem
porcem=porcentagem/100; %Passar para porcentagem
fprintf('%.4f\n',porcem) %imprime na tela
fprintf(Escreve,'%.4f\n',porcem); %salva no arquivo (Escreve.txt)

% fprintf('%.2f\n',Ler(i,:)) % mostra os dados na tela do matlab
% fprintf(Escreve,'%.1f\n',Ler(i,:)); %salva no arquivo (Escreve.txt) somente usado para temperatura
end
fclose(Escreve);