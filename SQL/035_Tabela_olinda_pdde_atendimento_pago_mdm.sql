--Arquivo PDDE_Atendimento_Pago_MDM_formatado.csv
--Fonte Original: https://www.fnde.gov.br/olinda-ide/servico/PDDE_PRJ_914BRZ1071/versao/v1/aplicacao#!/
--Data: Jun/21
--Obs:
CREATE TABLE olinda_pdde_atendimento_pago_mdm(
	id SERIAL NOT NULL,
	sg_uf VARCHAR(5),
	no_razao_social VARCHAR(200),
	no_regiao VARCHAR(50),
	no_razao_social_cnpj_proponente VARCHAR(200),
	co_programa_fnde VARCHAR(100),
	no_programa_fnde VARCHAR(100),
	sg_programa_fnde VARCHAR(100),
	no_municipio VARCHAR(100),
	no_mesorregiao VARCHAR(100),
	no_localizacao VARCHAR(50),
	no_esfera_adm VARCHAR(100),
	no_esfera_adm0 VARCHAR(100),
	no_abreviado VARCHAR(100),
	ds_perfil_entidade VARCHAR(100),
	ds_mes_ano VARCHAR(50),
	ds_destinacao VARCHAR(100),
	nu_cgc_entidade VARCHAR(50),
	nu_ano INT,
	vl_total_pago  DECIMAL(12,2),
	vl_capital_pago  DECIMAL(12,2),
	vl_custeio_pago  DECIMAL(12,2),
	qtde_entidade_paga INT,
	qtde_liberacao_recurso INT,  
	vl_pg_ano_atual  DECIMAL(12,2),
	vl_pg_anos_anteriores  DECIMAL(12,2),
	PRIMARY KEY (id)
);