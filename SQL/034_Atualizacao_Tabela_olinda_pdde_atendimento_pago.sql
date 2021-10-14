-- Nenhum co_entidade se liga a co_entidade na tabela do censo.
--2 digitos a menos!
-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_pago ON censo_escolar_2020_escolas
-------------------------------------------------------------------------
SELECT distinct pdde.co_entidade
FROM olinda_pdde_atendimento_pago pdde
INNER JOIN censo_escolar_2020_escolas escolas
ON	pdde.co_entidade = escolas.co_entidade

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_pago ON censo_escolar_2019_escolas
-------------------------------------------------------------------------
SELECT distinct pdde.co_entidade
FROM olinda_pdde_atendimento_pago pdde
INNER JOIN censo_escolar_2019_escolas escolas
ON	pdde.co_entidade = escolas.co_entidade

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_pago ON censo_escolar_2018_escolas
-------------------------------------------------------------------------
SELECT distinct pdde.co_entidade
FROM olinda_pdde_atendimento_pago pdde
INNER JOIN censo_escolar_2018_escolas escolas
ON	pdde.co_entidade = escolas.co_entidade

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_pago ON censo_escolar_2017_escolas
-------------------------------------------------------------------------
SELECT distinct pdde.co_entidade
FROM olinda_pdde_atendimento_pago pdde
INNER JOIN censo_escolar_2017_escolas escolas
ON	pdde.co_entidade = escolas.co_entidade

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_pago ON censo_escolar_2016_escolas
-------------------------------------------------------------------------
SELECT distinct pdde.co_entidade
FROM olinda_pdde_atendimento_pago pdde
INNER JOIN censo_escolar_2016_escolas escolas
ON	pdde.co_entidade = escolas.co_entidade

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_pago ON ibge_relatorio_dtb_brasil_municipio
-------------------------------------------------------------------------
--ERROR:  insert or update on table "olinda_pdde_atendimento_pago" violates foreign key constraint 
--"fk_municipio"
--Tem um digito a menos!
ALTER TABLE olinda_pdde_atendimento_pago
ADD CONSTRAINT fk_municipio FOREIGN KEY (co_municipio_fnde) 
REFERENCES ibge_relatorio_dtb_brasil_municipio (cod_municipio_completo);

-- sigla_programa_fnde olinda_pdde_atendimento_pago
ALTER TABLE  olinda_pdde_atendimento_pago
ADD COLUMN sigla_programa_fnde VARCHAR(100);

UPDATE 	olinda_pdde_atendimento_pago
SET 	sigla_programa_fnde = CASE
		WHEN co_programa_fnde = '02' THEN 'PDDE'
		WHEN co_programa_fnde = '0A' THEN 'PDDE ESTRUTURA'
		WHEN co_programa_fnde = '0B' THEN 'PDDE QUALIDADE'
		WHEN co_programa_fnde = 'A3' THEN 'PDDE-EDUCACAO ESPECIAL'
		WHEN co_programa_fnde = 'Z9' THEN 'PDDE-EDUCACAO INTEGRAL'	
    END;