--Arquivo PDDE_Execucao_Descentralizada_Formatada.csv
--Fonte Original: https://www.fnde.gov.br/olinda-ide/servico/PDDE_PRJ_914BRZ1071/versao/v1/aplicacao#!/
--Data: Out/21
--Obs:
CREATE TABLE olinda_pdde_execucao_descentralizada(
	id SERIAL NOT NULL,
	periodo_referencia DATE,
	codigo_programa_fnde VARCHAR(5),
	agencia VARCHAR(10),
	conta_corrente VARCHAR(50),
	numero_banco VARCHAR(6),
	uf VARCHAR(5),
	codigo_regiao_ibge INT,
	codigo_municipio_ibge INT, 
	codigo_mesoregiao INT,
	numero_seq_entidade VARCHAR(50),
	situacao_conta VARCHAR(100),
	valor_saldo_conta DECIMAL(12,2),
	valor_saldo_fundos DECIMAL(12,2),
	valor_saldo_poupanca DECIMAL(12,2),
	valor_saldo_rdb DECIMAL(12,2),
	saldo_aplicado DECIMAL(12,2),
	PRIMARY KEY (id)
);