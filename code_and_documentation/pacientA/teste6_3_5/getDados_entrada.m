function dados_entrada=getDados_entrada(dados)

[linhas,colunas]=size(dados);

dados2=dados(1:linhas,2:colunas);

dados_entrada = dados2';