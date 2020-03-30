clc;
clear all;
close all;

Ler2 = importdata('Ler2.txt',',');
% Ler2 = load('Ler2.txt');
Ler3 = fopen('Ler2.txt');

% Escreve = fopen('Escreve.txt','wt');
% A = fscanf(Ler2,'Medicao: %f')
text=char(Ler2);


Escreve = fopen('Escreve.txt','wt');

for i=1:size(Ler2)
   
        A = fscanf(Ler3,'Medicao: %d, Humi DHT11_1: %f,Humi DHT11_2: %f,Humi DHT11_3: %f,Humi DHT11_4: %f,Humi DHT11_5: %f\n',[6 4852])
        B = fscanf(Ler3,'Medicao: %d, Temp DHT11_1: %f,Temp DHT11_2: %f,Temp DHT11_3: %f,Temp DHT11_4: %f,Temp DHT11_5: %f, Lm35_1: %f, Lm35_2: %f\n',[8 4852])
        C = textscan(Ler3,'%s')
        D = fscanf(Ler3,'%f')
        fprintf(Escreve,'%.1f\n',A);
 end
   
 
    
   

  fclose(Ler3);
    fclose(Escreve);
