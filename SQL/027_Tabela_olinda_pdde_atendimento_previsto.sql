--Arquivo Atendimento_PDDE_PREVISTO_Formatada.csv
--Fonte Original: https://www.fnde.gov.br/olinda-ide/servico/PDDE_PRJ_914BRZ1071/versao/v1/aplicacao#!/
--Data: Out/21
--Obs:
CREATE TABLE olinda_pdde_atendimento_previsto(
	id SERIAL NOT NULL,
	co_entidade VARCHAR(15),
	nu_cgc_entidade VARCHAR(50),
	nu_cgc_entidade_proponente VARCHAR(50),
	co_escola INT,
	no_escola VARCHAR(200),
	nu_seq_escola VARCHAR(15),
	an_exercicio INT,
	co_programa_fnde VARCHAR(15),
	co_destinacao VARCHAR(15),
	co_municipio_fnde INT,
	co_mesoregiao INT,
	sg_uf VARCHAR(2),
	co_regiao VARCHAR(15),
	co_esfera_adm INT,
	tp_entidade VARCHAR(200),
	tp_localizacao VARCHAR(200),
	tp_escola VARCHAR(200),
	qt_alunos INT,
	vl_custeio_recurso  DECIMAL(12,2),
	vl_capital_recurso  DECIMAL(12,2),
	vl_total_recurso  DECIMAL(12,2),
	PRIMARY KEY (id)
);





