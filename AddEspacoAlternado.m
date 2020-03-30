clc;
clear all;
close all;

Ler = load('Ler.txt');
Escreve = fopen('Escreve.txt','wt');

for i=1:size(Ler)
    %         porcentagem=Ler(i,:);%Passar para porcentagem
    %         porcem=porcentagem/100;
    %         fprintf('%.4f\n',porcem)
    %         fprintf(Escreve,'%.4f\n',porcem);
    par=2*i;
    impar=2*i+1;
    restPar=rem(par,i);
    restImp=rem(impar,i);
    
    if(restPar==0)
%         fprintf('%.2f\n',Ler(i,:))
        fprintf(Escreve,'%.1f\n',Ler(i,:));
%         for j=1:1:17
%             fprintf(' \n')
%             fprintf(Escreve,' \n');
%         end
    end
        if(restImp==1)
%         fprintf('%.2f\n',Ler(i,:))
        fprintf(Escreve,'%.1f\n',Ler(i,:));
%         for j=1:1:16
%             fprintf(' \n')
%             fprintf(Escreve,' \n');
%         end
    end
    
    
end
fclose(Escreve);





