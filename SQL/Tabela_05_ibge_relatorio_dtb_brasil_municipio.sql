--Arquivo relatorio_dtb_brasil_municipio.csv
--Fonte: https://www.ibge.gov.br/geociencias/organizacao-do-territorio/estrutura-territorial/23701-divisao-territorial-brasileira.html?=&t=acesso-ao-produto
--Data: mai/21
--OBS: 
CREATE TABLE ibge_relatorio_dtb_brasil_municipio(
	id SERIAL NOT NULL,
	cod_uf_ibge INT,
	estado VARCHAR(50),
	regiao_geografica_intermediaria	INT,
	nome_regiao_geografica_intermediaria VARCHAR(100),
	regiao_geografica_imediata INT,	
	nome_regiao_geografica_imediata VARCHAR(100),
	mesorregiao_geografica INT,
	nome_mesorregiao VARCHAR(100),
	microrregiao_geografica INT,
	nome_microrregiao VARCHAR(100),
	cod_municipio INT,
	cod_municipio_completo INT,
	municipio VARCHAR(100),
	PRIMARY KEY (cod_municipio_completo),
	FOREIGN KEY (cod_municipio_completo) REFERENCES ibge_municipios (cod_municipio_ibge),
	FOREIGN KEY (cod_uf_ibge) REFERENCES ibge_estados (cod_uf_ibge)
);