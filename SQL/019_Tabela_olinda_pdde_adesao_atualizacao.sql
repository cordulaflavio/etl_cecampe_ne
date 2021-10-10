--Arquivo PDDE_Adesao_Atualizacao_Formatada.csv
--Fonte Original: https://www.fnde.gov.br/olinda-ide/servico/PDDE_PRJ_914BRZ1071/versao/v1/aplicacao#!/
--Data: Out/21
--Obs:
CREATE TABLE olinda_pdde_adesao_atualizacao(
	id SERIAL NOT NULL,
	sg_uf  VARCHAR(2),
	no_municipio  VARCHAR(200),
	co_municipio_ibge INT,
	an_exercicio INT,
	co_escola INT,
	no_escola VARCHAR(200),
	tp_localizacao VARCHAR(200),
	qt_alunos INT,
	st_alunado VARCHAR(100),
	nu_cgc_entidade  VARCHAR(50),
	no_razao_social  VARCHAR(200),
	nu_ddd_entidade  VARCHAR(5),
	nu_telefone  VARCHAR(20),
	esfera  VARCHAR(50),
	dt_atualizacao DATE,
	nu_uex INT,
	st_atualizado VARCHAR(5),
	PRIMARY KEY (id)
);