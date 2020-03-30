clc;
clear all;
close all;

Temperatura = load('F:\UFLA\2016-2\PRG222 - Trabalho de Conclusão de Curso\PDFs_IMO\LEITURAS\arquivo.txt');
Umidade     = load('F:\UFLA\2016-2\PRG222 - Trabalho de Conclusão de Curso\PDFs_IMO\LEITURAS\arquivo_umidade.txt');
TamTemp = length(Temperatura);
TamUmid = length(Umidade);

umid=1:TamUmid;
temp=1:TamTemp;

% subplot(2,1,1)
figure
plot(Umidade,'blacko')
title('Sensor DHTPIN1 (cvn1) - 01/11/2016 (pdm) (09:00-11:00) horas','FontSize',14,'FontWeight','bold','Color','black')
grid
ylabel('Faixa de Umidade (em %)','FontSize',14,'FontWeight','bold','Color','black')
xlabel('Número de Medições','FontSize',14,'FontWeight','bold','Color','black')

% subplot(2,1,2)
figure
plot(Temperatura,'bo')
title('Sensor DHTPIN1 (cvn1) - 01/11/2016 (pdm) (09:00-11:00) horas','FontSize',14,'FontWeight','bold','Color','b')
grid
ylabel('Faixa da Temperatura (em ºC)','FontSize',14,'FontWeight','bold','Color','b')
xlabel('Número de Medições','FontSize',14,'FontWeight','bold','Color','b')

fprintf('Medidas: %.3f\t %.3f\t %.3f\t %.3f\t %.3f\t %.3f\t %.3f\t %.3f\t %.3f\t %.3f\n',mean(Temperatura),mean(Umidade),max(Temperatura),min(Temperatura),max(Umidade),min(Umidade),std(Temperatura),std(Umidade),var(Temperatura),var(Umidade))

% fprintf('Media Aritmetica da Temperatura: %f \n',mean(Temperatura))
% fprintf('Media Aritmetica da Umidade: %f \n',mean(Umidade))
% 
% fprintf('Temperatura Maxima: %f \n',max(Temperatura))
% fprintf('Temperatura Minima: %f \n',min(Temperatura))
% fprintf('Umidade Maxima: %f \n',max(Umidade))
% fprintf('Umidade Minima: %f \n',min(Umidade))
% 
% fprintf('Desvio Padrao da Temperatura: %f \n',std(Temperatura))
% fprintf('Desvio Padrao da Umidade: %f \n',std(Umidade))
% 
% fprintf('Varianca da Temperatura: %f \n',var(Temperatura)) 
% fprintf('Varianca da Umidade: %f \n',var(Umidade))














