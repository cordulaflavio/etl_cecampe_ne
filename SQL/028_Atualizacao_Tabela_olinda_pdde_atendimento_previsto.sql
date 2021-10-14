-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_previsto ON censo_escolar_2020_escolas
-------------------------------------------------------------------------

select count(*) from olinda_pdde_atendimento_previsto
select * from olinda_pdde_atendimento_previsto limit 100

ALTER TABLE olinda_pdde_atendimento_previsto 
ADD COLUMN co_escola_censo_2020 INT; 

UPDATE olinda_pdde_atendimento_previsto
SET co_escola_censo_2020 = co_escola
WHERE co_escola IN (SELECT distinct pdde.co_escola
					FROM olinda_pdde_atendimento_previsto pdde
					INNER JOIN censo_escolar_2020_escolas escolas
					ON	pdde.co_escola = escolas.co_entidade
				   	WHERE pdde.an_exercicio = 2020)
				AND an_exercicio = 2020

ALTER TABLE olinda_pdde_atendimento_previsto
ADD CONSTRAINT fk_atend_prev_ref_escolas_2020 FOREIGN KEY (co_escola_censo_2020) 
REFERENCES censo_escolar_2020_escolas (co_entidade);

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_previsto ON censo_escolar_2019_escolas
-------------------------------------------------------------------------

select count(*) from olinda_pdde_atendimento_previsto
select * from olinda_pdde_atendimento_previsto limit 100

ALTER TABLE olinda_pdde_atendimento_previsto 
ADD COLUMN co_escola_censo_2019 INT; 

UPDATE olinda_pdde_atendimento_previsto
SET co_escola_censo_2019 = co_escola
WHERE co_escola IN (SELECT distinct pdde.co_escola
					FROM olinda_pdde_atendimento_previsto pdde
					INNER JOIN censo_escolar_2019_escolas escolas
					ON	pdde.co_escola = escolas.co_entidade
				   	WHERE pdde.an_exercicio = 2019)
				AND an_exercicio = 2019			

ALTER TABLE olinda_pdde_atendimento_previsto
ADD CONSTRAINT fk_atend_prev_ref_escolas_2019 FOREIGN KEY (co_escola_censo_2019) 
REFERENCES censo_escolar_2019_escolas (co_entidade);

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_previsto ON censo_escolar_2018_escolas
-------------------------------------------------------------------------

select * from olinda_pdde_atendimento_previsto limit 100

ALTER TABLE olinda_pdde_atendimento_previsto 
ADD COLUMN co_escola_censo_2018 INT; 

UPDATE olinda_pdde_atendimento_previsto
SET co_escola_censo_2018 = co_escola
WHERE co_escola IN (SELECT distinct pdde.co_escola
					FROM olinda_pdde_atendimento_previsto pdde
					INNER JOIN censo_escolar_2018_escolas escolas
					ON	pdde.co_escola = escolas.co_entidade
				   	WHERE pdde.an_exercicio = 2018)
				AND an_exercicio = 2018
				
ALTER TABLE olinda_pdde_atendimento_previsto
ADD CONSTRAINT fk_atend_prev_ref_escolas_2018 FOREIGN KEY (co_escola_censo_2018) 
REFERENCES censo_escolar_2018_escolas (co_entidade);

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_previsto ON censo_escolar_2017_escolas
-------------------------------------------------------------------------

select * from olinda_pdde_atendimento_previsto limit 100

ALTER TABLE olinda_pdde_atendimento_previsto 
ADD COLUMN co_escola_censo_2017 INT; 

UPDATE olinda_pdde_atendimento_previsto
SET co_escola_censo_2017 = co_escola
WHERE co_escola IN (SELECT distinct pdde.co_escola
					FROM olinda_pdde_atendimento_previsto pdde
					INNER JOIN censo_escolar_2017_escolas escolas
					ON	pdde.co_escola = escolas.co_entidade
				   	WHERE pdde.an_exercicio = 2017)
				AND an_exercicio = 2017

ALTER TABLE olinda_pdde_atendimento_previsto
ADD CONSTRAINT fk_atend_prev_ref_escolas_2017 FOREIGN KEY (co_escola_censo_2017) 
REFERENCES censo_escolar_2017_escolas (co_entidade);

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_previsto ON censo_escolar_2016_escolas
-------------------------------------------------------------------------

select * from olinda_pdde_atendimento_previsto limit 100

ALTER TABLE olinda_pdde_atendimento_previsto 
ADD COLUMN co_escola_censo_2016 INT; 

UPDATE olinda_pdde_atendimento_previsto
SET co_escola_censo_2016 = co_escola
WHERE co_escola IN (SELECT distinct pdde.co_escola
					FROM olinda_pdde_atendimento_previsto pdde
					INNER JOIN censo_escolar_2016_escolas escolas
					ON	pdde.co_escola = escolas.co_entidade
				   	WHERE pdde.an_exercicio = 2016)
				AND an_exercicio = 2016
				
ALTER TABLE olinda_pdde_atendimento_previsto
ADD CONSTRAINT fk_atend_prev_ref_escolas_2016 FOREIGN KEY (co_escola_censo_2016) 
REFERENCES censo_escolar_2016_escolas (co_entidade);

-------------------------------------------------------------------------
-- FKey de olinda_pdde_atendimento_previsto ON ibge_relatorio_dtb_brasil_municipio
-------------------------------------------------------------------------
--ERROR:  insert or update on table "olinda_pdde_atendimento_previsto" 
--violates foreign key constraint "fk_municipio"
-- a coluna co_municipio_fnde tem apenas 6 digitos
ALTER TABLE olinda_pdde_atendimento_previsto
ADD CONSTRAINT fk_municipio FOREIGN KEY (co_municipio_fnde) 
REFERENCES ibge_relatorio_dtb_brasil_municipio (cod_municipio_completo);

-------------------------------------------------------------------------
-- Regiao
-------------------------------------------------------------------------
-- Adicionar regiao no script pandas data_wrangling_PDDE_Adesao_Atualizacao.ipynb
ALTER TABLE  olinda_pdde_atendimento_previsto
ADD COLUMN cod_regiao INT;

UPDATE 	olinda_pdde_atendimento_previsto
SET 	cod_regiao = CASE
		WHEN sg_uf IN ('AC','AP','AM','PA','RO','RR','TO') THEN 1
	   	WHEN sg_uf IN ('AL','BA','CE','MA','PB','PE','PI','RN','SE') THEN 2
		WHEN sg_uf IN ('ES','MG','RJ','SP') THEN 3
		WHEN sg_uf IN ('PR','RS','SC') THEN 4
		WHEN sg_uf IN ('GO','MT','MS','DF') THEN 5
    END;

--FOREIGN KEY para ibge_regioes
ALTER TABLE olinda_pdde_atendimento_previsto
ADD CONSTRAINT fk_regiao FOREIGN KEY (cod_regiao) 
REFERENCES ibge_regioes (cod_regiao);

-------------------------------------------------------------------------
-- sigla_programa_fnde
-------------------------------------------------------------------------
-- Adicionar regiao no script pandas data_wrangling_PDDE_Adesao_Atualizacao.ipynb
ALTER TABLE  olinda_pdde_atendimento_previsto
ADD COLUMN sigla_programa_fnde VARCHAR(100);

UPDATE 	olinda_pdde_atendimento_previsto
SET 	sigla_programa_fnde = CASE
		WHEN co_programa_fnde = '02' THEN 'PDDE'
		WHEN co_programa_fnde = '0A' THEN 'PDDE ESTRUTURA'
		WHEN co_programa_fnde = '0B' THEN 'PDDE QUALIDADE'
		WHEN co_programa_fnde = '85' THEN 'PDDE/FEFS'
		WHEN co_programa_fnde = '96' THEN 'PDDE/PDE-ESCOLA'
		WHEN co_programa_fnde = 'A3' THEN 'PDDE-EDUCACAO ESPECIAL'
		WHEN co_programa_fnde = 'Z9' THEN 'PDDE-EDUCACAO INTEGRAL'	
    END;