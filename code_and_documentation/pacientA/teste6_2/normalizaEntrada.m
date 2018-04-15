function input = normalizaEntrada(dados)

[linhas,colunas]=size(dados);



for i=1:linhas
    mini=min(dados(i,:));
    input(i,:)=dados(i,:) - mini;
    maxi=max(input(i,:));
    input(i,:)=input(i,:)/maxi;    
end