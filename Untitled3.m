clc;
clear all;
close all;

arquivo1 = fopen('Ler2.txt','r');
arquivo2 = fopen('Escrever.txt','wt');
% A = fscanf(arquivo1,'Medicao: %d, Humi DHT11_1: %f,Humi DHT11_2: %f,Humi DHT11_3: %f,Humi DHT11_4: %f,Humi DHT11_5: %f\n',[6 6])
%         B = fscanf(Ler3,'Medicao: %d, Temp DHT11_1: %f,Temp DHT11_2: %f,Temp DHT11_3: %f,Temp DHT11_4: %f,Temp DHT11_5: %f, Lm35_1: %f, Lm35_2: %f\n',[8 4852])
C = textscan(arquivo1,'%s');
%         D = fscanf(Ler3,'%f')
% celldisp(C)

tamanho=size(C{1,1});
k=1;
m=16;
for i=1:tamanho
    for j=k:m
        fprintf('%s \t',C{1,1}{j,1})
    end
    
        k=k+16;
        m=m+16;
  
    fprintf(' \n');
end
fprintf('\n');
% fprintf(Escreve,'%c\n',C);
fclose(arquivo1);
fclose(arquivo2);