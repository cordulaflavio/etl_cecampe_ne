--Arquivo informacoes_estados_dados.csv
--Fonte: 
--Data: Mai/21
--Obs:
CREATE TABLE ibge_estados_info( 
	cod_uf_ibge INT NOT NULL,
	area_territorial_km2 DECIMAL(12,3),
	populacao_estimada_2020 INT,
	matriculas_ensino_fundamental_2018 INT,	
	idh_2010 DECIMAL(4,3),
	rendimento_mensal_domiciliar_per_capita_R$_2020 DECIMAL(12,2),
	PRIMARY KEY (cod_uf_ibge),
	FOREIGN KEY (cod_uf_ibge) REFERENCES ibge_estados (cod_uf_ibge)
);