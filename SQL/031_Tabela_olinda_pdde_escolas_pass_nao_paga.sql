--Arquivo PDDE_Escolas_Passiveis_Atendimento_NAO_PAGA.csv
--Fonte Original: https://www.fnde.gov.br/olinda-ide/servico/PDDE_PRJ_914BRZ1071/versao/v1/aplicacao#!/
--Data: Jun/21
--Obs:
CREATE TABLE olinda_pdde_escolas_pass_nao_paga(
	id SERIAL NOT NULL,
	an_exercicio INT,
	ds_programa_fnde VARCHAR(100),
	sg_destinacao VARCHAR(100),
	esfera VARCHAR(100),
	sg_uf VARCHAR(5),
	no_municipio VARCHAR(100),
	co_escola INT,
	no_escola VARCHAR(200),
	qt_alunos INT,
	vl_custeio DECIMAL(12,2), 
	vl_capital DECIMAL(12,2),
	vl_total DECIMAL(12,2),
	cnpj_uex VARCHAR(50),
	no_razao_social VARCHAR(200),
	dt_emissao_ob DATE,
	PRIMARY KEY (id)
);