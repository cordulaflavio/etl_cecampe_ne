--Criacao propria baseada nos dados dos municipios
--Fonte:
--Data: Set/21
--Obs: latitude e longitude não encontrados!
CREATE TABLE ibge_regioes(
	cod_regiao INT,
	regiao VARCHAR(30),
	latitude FLOAT(8),
    longitude FLOAT(8),
	PRIMARY KEY (cod_regiao)
);

INSERT INTO ibge_regioes VALUES
(1,'Norte',NULL,NULL),
(2,'Nordeste',NULL,NULL),
(3,'Sudeste',NULL,NULL),
(4,'Sul',NULL,NULL),
(5,'Centro-Oeste',NULL,NULL);