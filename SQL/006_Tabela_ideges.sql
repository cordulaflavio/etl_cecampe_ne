--Arquivos ideges2018ref2017_formatado.csv, ideges2019ref2018_formatado.csv, 
--ideges2020ref2019_formatado.csv, ideges2021ref2020_formatado.csv e ideges2021ref2020_formatado.csv 
--Fonte: CECAMPE-NE
--Data: out/21
--OBS: 
CREATE TABLE ideges(
	id SERIAL NOT NULL,
	st_atualizado VARCHAR(100),
	cnpj  VARCHAR(50),
	nep INT,
	nea INT,
	indice_adesao INT,
	cod_estado INT,
	sg_uf VARCHAR(5),
	cod_municipio INT,
	no_municipio VARCHAR(200),
	salum DECIMAL(12,3),
	salaa DECIMAL(12,3),
	vr INT,
	indice_execucao DECIMAL(12,3),
	razao_social VARCHAR(200),
	situacao_opc VARCHAR(100),
	data_envio_pc  DATE,
	indice_regularidade INT,
	ideges DECIMAL(4,2),
	classificacao_ideges VARCHAR(20),
	ano_ideges INT,
	ano_ref_ideges INT,
    PRIMARY KEY (cnpj,and_ref_ideges)
);



