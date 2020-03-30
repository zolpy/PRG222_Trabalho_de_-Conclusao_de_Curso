clc
clear all
close all

celula=importdata('texto.txt');
text=char(celula);

for i=1:16,
posicao=find(text(i,:)==':');
valor=text(i,posicao+1:end);
valor=str2num(valor);
resultado=[resultado;valor];
end