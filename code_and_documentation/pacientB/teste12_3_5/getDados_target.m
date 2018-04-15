function dados_target=getDados_target(dados)


[linhas,colunas] = size(dados);

for i=1:linhas
    if dados(i,1)==1
       dados_target(:,i) = [1,0,0,0]';
    elseif dados(i,1)== 2
       dados_target(:,i) = [0,1,0,0]';
    elseif dados(i,1)== 3
       dados_target(:,i) = [0,0,1,0]'; 
    elseif dados(i,1)== 4
       dados_target(:,i) = [0,0,0,1]';
    end        
end
