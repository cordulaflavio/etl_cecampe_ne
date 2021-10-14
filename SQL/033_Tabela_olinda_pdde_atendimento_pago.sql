--Arquivo Atendimento_PDDE_PAGO_todos_anos_Formatada.csv
--Fonte Original: https://www.fnde.gov.br/olinda-ide/servico/PDDE_PRJ_914BRZ1071/versao/v1/aplicacao#!/
--Data: Jun/21
--Obs:
CREATE TABLE olinda_pdde_atendimento_pago(
	id SERIAL NOT NULL,
	an_exercicio INT,
	co_entidade INT,
	cnpj_entidade VARCHAR(50),
	nu_cgc_entidade VARCHAR(50),
	co_programa_fnde VARCHAR(5),
	co_destinacao INT,
	co_municipio_fnde  INT,
	co_mesoregiao  INT,
	sg_uf VARCHAR(2),
	co_regiao VARCHAR(2),
	co_esfera_adm INT,
	tp_entidade VARCHAR(5),
	tp_localizacao VARCHAR(5),
	dt_pagamento DATE,
	dt_liberacao_pagamento DATE,
	qtd_dias_liberacao_recurso INT,
	qt_escolas INT,
	qt_alunos INT,
	vl_pago_capital DECIMAL(12,2),
	vl_pago_custeio DECIMAL(12,2),
	vl_pg_anos_anteriores DECIMAL(12,2),
	nu_parcela_pagamento INT,
	PRIMARY KEY (id)
);