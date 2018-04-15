function [bem_total,PV,PF,NV,NF,sensitivity,specificity]= avaliador(resultado, dados)
    [linhas,colunas] = size(dados);
    
    bem_total=0;
    PV=0;
    PF=0;
    NV=0;
    NF=0;
    
    for i=1:colunas
        [valor_r,posicao_r]=max(resultado(:,i));
        [valor_d,posicao_d]=max(dados(:,i));

        if posicao_d~=2 && posicao_r == 2
            PF=PF+1;
        elseif posicao_d==2 && posicao_r ~= 2
            NF=NF+1;
        elseif posicao_d==2 && posicao_r == 2
            PV=PV+1;
        elseif posicao_d~=2&& posicao_r ~=2
            NV=NV+1;
        end
        
        if posicao_r == posicao_d
            bem_total = bem_total +1;
        end                
    end
    
    sensitivity = (PV/(PV+NF));
    specificity = (NV/(NV+PF));