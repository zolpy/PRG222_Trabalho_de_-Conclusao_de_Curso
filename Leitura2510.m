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
    restoDivisao = rem(i,3);
    fprintf('i: %d resto: %d\n',i,restoDivisao );
    
    
    if(restoDivisao==0)
        
        % posicao=find(text(i,:)==':');
        % valor=text(i,posicao+1:end);
        % fprintf(Escreve,'%c\n',valor);
        %A = fscanf(Ler2,'Medicao: %d, Humi DHT11_1: %f,Humi DHT11_2: %f,Humi DHT11_3: %f,Humi DHT11_4: %f,Humi DHT11_5: %f\n',[6 4852])
        idades = fscanf(Ler3,'%*s %f\n')
    end
    if(restoDivisao==1)
        %B = fscanf(Ler2,'Medicao: %d, Temp DHT11_1: %f,Temp DHT11_2: %f,Temp DHT11_3: %f,Temp DHT11_4: %f,Temp DHT11_5: %f\n',[8 4852])
        idades = fscanf(Ler3,'%*s %f\n')
    end
    
    
end

  fclose(Ler3);
    fclose(Escreve);
