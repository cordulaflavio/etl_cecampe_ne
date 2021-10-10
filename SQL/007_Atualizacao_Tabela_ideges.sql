-- Adicionar regiao no script pandas data_wrangling_ideges.ipynb
ALTER TABLE  ideges
ADD COLUMN cod_regiao INT;

UPDATE 	ideges
SET 	cod_regiao = CASE
		WHEN sg_uf IN ('AC','AP','AM','PA','RO','RR','TO') THEN 1
	   	WHEN sg_uf IN ('AL','BA','CE','MA','PB','PE','PI','RN','SE') THEN 2
		WHEN sg_uf IN ('ES','MG','RJ','SP') THEN 3
		WHEN sg_uf IN ('PR','RS','SC') THEN 4
		WHEN sg_uf IN ('GO','MT','MS','DF') THEN 5
    END;

--FOREIGN KEY para ibge_estados
ALTER TABLE ideges
ADD CONSTRAINT fk_estado FOREIGN KEY (cod_uf_ibge) 
REFERENCES ibge_estados(cod_uf_ibge);

--FOREIGN KEY para ibge_relatorio_dtb_brasil_municipio
ALTER TABLE ideges
ADD CONSTRAINT fk_municipio FOREIGN KEY (cod_municipio) 
REFERENCES ibge_relatorio_dtb_brasil_municipio (cod_municipio_completo);

--FOREIGN KEY para ibge_regioes
ALTER TABLE ideges
ADD CONSTRAINT fk_regiao FOREIGN KEY (cod_regiao) 
REFERENCES ibge_regioes (cod_regiao);