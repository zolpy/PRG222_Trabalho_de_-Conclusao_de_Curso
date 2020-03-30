clc;
clear all;
close all;

% Ler1 = load('Ler2.txt');
% Ler2 = fopen('Ler2.txt')
% fclose(Ler)

for i=1:170
    Ler2 = fopen('Ler2.txt','r')
    C = fscanf(Ler2,'%f'); % C = textscan(Ler2,'%c');
    Escreve = fopen('Escreve.txt','wt')
    fprintf(Escreve,'%.2f\n',C)
    fclose(Ler2)
    fclose(Escreve)

    
end







