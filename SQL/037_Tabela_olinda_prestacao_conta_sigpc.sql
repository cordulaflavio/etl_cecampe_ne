--Arquivo Prestacao_Conta_SIGPC_Concatenada_Formatada.csv
--Fonte Original: https://www.fnde.gov.br/olinda-ide/servico/PDDE_PRJ_914BRZ1071/versao/v1/aplicacao#!/
--Data: Out/21
--Obs:
CREATE TABLE olinda_prestacao_conta_sigpc(
	id SERIAL NOT NULL,
	nu_cnpj_uex VARCHAR(50),
	no_razao_social_uex VARCHAR(200),
	nu_cnpj_eex VARCHAR(50),
	no_razao_social_eex VARCHAR(200),
	an_exercicio INT,
	co_esfera_adm INT,
	co_programa_fnde VARCHAR(5),
	ds_situacao_uex VARCHAR(50),
	st_ef_susp_vigente_uex VARCHAR(5),
	st_uex_apta_pagamento VARCHAR(5),
	st_ef_susp_vigente_eex VARCHAR(5),
	st_eex_apta_pagamento VARCHAR(5),
	PRIMARY KEY (id)
);
