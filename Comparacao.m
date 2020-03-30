clc;
clear all;
close all;

 Ler = load('Teste.txt');
%  Ler = load('teste.txt');
Escreve = fopen('Escreve.txt','wt');


for i=1:47:size(Ler)
        porcentagem=Ler(i,:);
        porcem=porcentagem/100; %Passar para porcentagem
%         fprintf('%d: %.4f\n',i,porcem)
      fprintf(' %.4f\n',porcem)
        fprintf(Escreve,'%.4f\n',porcem);

% if(Ler(i,:)>0) %Ler(i,:)<90 && 
%     fprintf('%.2f\n',Ler(i,:))
%     fprintf(Escreve,'%.1f\n',Ler(i,:));
% end

%     fprintf('%.2f\n',Ler(i,:))
%     fprintf(Escreve,'%.1f\n',Ler(i,:));

%     for j=1:1:17
%         fprintf(' \n')
%         fprintf(Escreve,' \n');
%     end
    
end

% save('dadosout.txt','dados','-ascii')
fclose(Escreve);





