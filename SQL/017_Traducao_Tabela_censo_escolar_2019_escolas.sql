SELECT * FROM censo_escolar_2019_escolas limit 100

UPDATE 	censo_escolar_2019_escolas
SET 	tp_situacao_funcionamento = CASE
		WHEN tp_situacao_funcionamento = '1' THEN 'Em Atividade'
	   	WHEN tp_situacao_funcionamento = '2' THEN 'Paralisada'
		WHEN tp_situacao_funcionamento = '3' THEN 'Extinta (ano do Censo)'
		WHEN tp_situacao_funcionamento = '4' THEN 'Extinta em Anos Anteriores'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_dependencia = CASE
		WHEN tp_dependencia = '1' THEN 'Federal'
	   	WHEN tp_dependencia = '2' THEN 'Estadual'
		WHEN tp_dependencia = '3' THEN 'Municipal'
		WHEN tp_dependencia = '4' THEN 'Privada'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_localizacao = CASE
		WHEN tp_localizacao = '1' THEN 'Urbana'
	   	WHEN tp_localizacao = '2' THEN 'Rural'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_localizacao_diferenciada = CASE
		WHEN tp_localizacao_diferenciada = '0' THEN 'A escola não está em área de localização diferenciada'
		WHEN tp_localizacao_diferenciada = '1' THEN 'Área de assentamento'
	   	WHEN tp_localizacao_diferenciada = '2' THEN 'Terra indígena'
		WHEN tp_localizacao_diferenciada = '3' THEN 'Área onde se localiza comunidade remanescente de quilombos'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_vinculo_secretaria_educacao = CASE
		WHEN in_vinculo_secretaria_educacao = '0' THEN 'N'
	   	WHEN in_vinculo_secretaria_educacao = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_vinculo_seguranca_publica = CASE
		WHEN in_vinculo_seguranca_publica = '0' THEN 'N'
	   	WHEN in_vinculo_seguranca_publica = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_vinculo_secretaria_saude = CASE
		WHEN in_vinculo_secretaria_saude = '0' THEN 'N'
	   	WHEN in_vinculo_secretaria_saude = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_vinculo_outro_orgao = CASE
		WHEN in_vinculo_outro_orgao = '0' THEN 'N'
	   	WHEN in_vinculo_outro_orgao = '1' THEN 'S'
    END;	

UPDATE 	censo_escolar_2019_escolas
SET 	tp_categoria_escola_privada = CASE
		WHEN tp_categoria_escola_privada = '1' THEN 'Particular'
	   	WHEN tp_categoria_escola_privada = '2' THEN 'Comunitária'
		WHEN tp_categoria_escola_privada = '3' THEN 'Confessional'
	   	WHEN tp_categoria_escola_privada = '4' THEN 'Filantrópica'
END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_conveniada_pp = CASE
		WHEN in_conveniada_pp = '0' THEN 'N'
	   	WHEN in_conveniada_pp = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_convenio_poder_publico = CASE
		WHEN tp_convenio_poder_publico = '1' THEN 'Municipal'
	   	WHEN tp_convenio_poder_publico = '2' THEN 'Estadual'
		WHEN tp_convenio_poder_publico = '3' THEN 'Estadual e Municipal'
END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mant_escola_privada_emp = CASE
		WHEN in_mant_escola_privada_emp = '0' THEN 'N'
	   	WHEN in_mant_escola_privada_emp = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mant_escola_privada_ong = CASE
		WHEN in_mant_escola_privada_ong = '0' THEN 'N'
	   	WHEN in_mant_escola_privada_ong = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mant_escola_privada_oscip = CASE
		WHEN in_mant_escola_privada_oscip = '0' THEN 'N'
	   	WHEN in_mant_escola_privada_oscip = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mant_escola_priv_ong_oscip = CASE
		WHEN in_mant_escola_priv_ong_oscip = '0' THEN 'N'
	   	WHEN in_mant_escola_priv_ong_oscip = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mant_escola_privada_sind = CASE
		WHEN in_mant_escola_privada_sind = '0' THEN 'N'
	   	WHEN in_mant_escola_privada_sind = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mant_escola_privada_sist_s = CASE
		WHEN in_mant_escola_privada_sist_s = '0' THEN 'N'
	   	WHEN in_mant_escola_privada_sist_s = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mant_escola_privada_s_fins = CASE
		WHEN in_mant_escola_privada_s_fins = '0' THEN 'N'
	   	WHEN in_mant_escola_privada_s_fins = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_regulamentacao = CASE
		WHEN tp_regulamentacao = '0' THEN 'N'
	   	WHEN tp_regulamentacao = '1' THEN 'S'
	   	WHEN tp_regulamentacao = '2' THEN 'Em tramitação'
	END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_responsavel_regulamentacao = CASE
		WHEN tp_responsavel_regulamentacao = '1' THEN 'Federal'
	   	WHEN tp_responsavel_regulamentacao = '2' THEN 'Estadual'
	   	WHEN tp_responsavel_regulamentacao = '3' THEN 'Municipal'
		WHEN tp_responsavel_regulamentacao = '4' THEN 'Estadual e Municipal'
	   	WHEN tp_responsavel_regulamentacao = '5' THEN 'Federal e Estadual'
	   	WHEN tp_responsavel_regulamentacao = '6' THEN 'Federal, Estadual e Municipal'
		WHEN tp_responsavel_regulamentacao = '9' THEN 'Não informado'
	END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_local_func_predio_escolar = CASE
		WHEN in_local_func_predio_escolar = '0' THEN 'N'
	   	WHEN in_local_func_predio_escolar = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_ocupacao_predio_escolar = CASE
		WHEN tp_ocupacao_predio_escolar = '1' THEN 'Próprio'
	   	WHEN tp_ocupacao_predio_escolar = '2' THEN 'Alugado'
	   	WHEN tp_ocupacao_predio_escolar = '3' THEN 'Cedido'
	END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_local_func_socioeducativo = CASE
		WHEN in_local_func_socioeducativo = '0' THEN 'N'
	   	WHEN in_local_func_socioeducativo = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_local_func_unid_prisional = CASE
		WHEN in_local_func_unid_prisional = '0' THEN 'N'
	   	WHEN in_local_func_unid_prisional = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_local_func_prisional_socio = CASE
		WHEN in_local_func_prisional_socio = '0' THEN 'N'
	   	WHEN in_local_func_prisional_socio = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_local_func_galpao = CASE
		WHEN in_local_func_galpao = '0' THEN 'N'
	   	WHEN in_local_func_galpao = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_ocupacao_galpao = CASE
		WHEN tp_ocupacao_galpao = '1' THEN 'Próprio'
	   	WHEN tp_ocupacao_galpao = '2' THEN 'Alugado'
		WHEN tp_ocupacao_galpao = '3' THEN 'Cedido'
	   	WHEN tp_ocupacao_galpao = '9' THEN 'Não informado'
    END;
		
UPDATE 	censo_escolar_2019_escolas
SET 	in_local_func_salas_outra_esc = CASE
		WHEN in_local_func_salas_outra_esc = '0' THEN 'N'
	   	WHEN in_local_func_salas_outra_esc = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_local_func_outros = CASE
		WHEN in_local_func_outros = '0' THEN 'N'
	   	WHEN in_local_func_outros = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_predio_compartilhado = CASE
		WHEN in_predio_compartilhado = '0' THEN 'N'
	   	WHEN in_predio_compartilhado = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_agua_potavel = CASE
		WHEN in_agua_potavel = '0' THEN 'N'
	   	WHEN in_agua_potavel = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_agua_rede_publica = CASE
		WHEN in_agua_rede_publica = '0' THEN 'N'
	   	WHEN in_agua_rede_publica = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_agua_poco_artesiano = CASE
		WHEN in_agua_poco_artesiano = '0' THEN 'N'
	   	WHEN in_agua_poco_artesiano = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_agua_cacimba = CASE
		WHEN in_agua_cacimba = '0' THEN 'N'
	   	WHEN in_agua_cacimba = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_agua_fonte_rio = CASE
		WHEN in_agua_fonte_rio = '0' THEN 'N'
	   	WHEN in_agua_fonte_rio = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_agua_inexistente = CASE
		WHEN in_agua_inexistente = '0' THEN 'N'
	   	WHEN in_agua_inexistente = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_energia_rede_publica = CASE
		WHEN in_energia_rede_publica = '0' THEN 'N'
	   	WHEN in_energia_rede_publica = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_energia_gerador_fossil = CASE
		WHEN in_energia_gerador_fossil = '0' THEN 'N'
	   	WHEN in_energia_gerador_fossil = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_energia_renovavel = CASE
		WHEN in_energia_renovavel = '0' THEN 'N'
	   	WHEN in_energia_renovavel = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_energia_inexistente = CASE
		WHEN in_energia_inexistente = '0' THEN 'N'
	   	WHEN in_energia_inexistente = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esgoto_rede_publica = CASE
		WHEN in_esgoto_rede_publica = '0' THEN 'N'
	   	WHEN in_esgoto_rede_publica = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esgoto_fossa_septica = CASE
		WHEN in_esgoto_fossa_septica = '0' THEN 'N'
	   	WHEN in_esgoto_fossa_septica = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esgoto_fossa_comum = CASE
		WHEN in_esgoto_fossa_comum = '0' THEN 'N'
	   	WHEN in_esgoto_fossa_comum = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esgoto_fossa = CASE
		WHEN in_esgoto_fossa = '0' THEN 'N'
	   	WHEN in_esgoto_fossa = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esgoto_inexistente = CASE
		WHEN in_esgoto_inexistente = '0' THEN 'N'
	   	WHEN in_esgoto_inexistente = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_lixo_servico_coleta = CASE
		WHEN in_lixo_servico_coleta = '0' THEN 'N'
	   	WHEN in_lixo_servico_coleta = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_lixo_queima = CASE
		WHEN in_lixo_queima = '0' THEN 'N'
	   	WHEN in_lixo_queima = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_lixo_enterra = CASE
		WHEN in_lixo_enterra = '0' THEN 'N'
	   	WHEN in_lixo_enterra = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_lixo_destino_final_publico = CASE
		WHEN in_lixo_destino_final_publico = '0' THEN 'N'
	   	WHEN in_lixo_destino_final_publico = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_lixo_descarta_outra_area = CASE
		WHEN in_lixo_descarta_outra_area = '0' THEN 'N'
	   	WHEN in_lixo_descarta_outra_area = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_tratamento_lixo_separacao = CASE
		WHEN in_tratamento_lixo_separacao = '0' THEN 'N'
	   	WHEN in_tratamento_lixo_separacao = '1' THEN 'S'
		WHEN in_tratamento_lixo_separacao = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_tratamento_lixo_reutiliza = CASE
		WHEN in_tratamento_lixo_reutiliza = '0' THEN 'N'
	   	WHEN in_tratamento_lixo_reutiliza = '1' THEN 'S'
		WHEN in_tratamento_lixo_reutiliza = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_tratamento_lixo_reciclagem = CASE
		WHEN in_tratamento_lixo_reciclagem = '0' THEN 'N'
	   	WHEN in_tratamento_lixo_reciclagem = '1' THEN 'S'
		WHEN in_tratamento_lixo_reciclagem = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_tratamento_lixo_inexistente = CASE
		WHEN in_tratamento_lixo_inexistente = '0' THEN 'N'
	   	WHEN in_tratamento_lixo_inexistente = '1' THEN 'S'
		WHEN in_tratamento_lixo_inexistente = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_almoxarifado = CASE
		WHEN in_almoxarifado = '0' THEN 'N'
	   	WHEN in_almoxarifado = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_area_verde = CASE
		WHEN in_area_verde = '0' THEN 'N'
	   	WHEN in_area_verde = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_auditorio = CASE
		WHEN in_auditorio = '0' THEN 'N'
	   	WHEN in_auditorio = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_banheiro = CASE
		WHEN in_banheiro = '0' THEN 'N'
	   	WHEN in_banheiro = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_banheiro_ei = CASE
		WHEN in_banheiro_ei = '0' THEN 'N'
	   	WHEN in_banheiro_ei = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_banheiro_pne = CASE
		WHEN in_banheiro_pne = '0' THEN 'N'
	   	WHEN in_banheiro_pne = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_banheiro_funcionarios = CASE
		WHEN in_banheiro_funcionarios = '0' THEN 'N'
	   	WHEN in_banheiro_funcionarios = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_banheiro_chuveiro = CASE
		WHEN in_banheiro_chuveiro = '0' THEN 'N'
	   	WHEN in_banheiro_chuveiro = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_biblioteca = CASE
		WHEN in_biblioteca = '0' THEN 'N'
	   	WHEN in_biblioteca = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_biblioteca_sala_leitura = CASE
		WHEN in_biblioteca_sala_leitura = '0' THEN 'N'
	   	WHEN in_biblioteca_sala_leitura = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_cozinha = CASE
		WHEN in_cozinha = '0' THEN 'N'
	   	WHEN in_cozinha = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_despensa = CASE
		WHEN in_despensa = '0' THEN 'N'
	   	WHEN in_despensa = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_dormitorio_aluno = CASE
		WHEN in_dormitorio_aluno = '0' THEN 'N'
	   	WHEN in_dormitorio_aluno = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_dormitorio_professor = CASE
		WHEN in_dormitorio_professor = '0' THEN 'N'
	   	WHEN in_dormitorio_professor = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_laboratorio_ciencias = CASE
		WHEN in_laboratorio_ciencias = '0' THEN 'N'
	   	WHEN in_laboratorio_ciencias = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_laboratorio_informatica = CASE
		WHEN in_laboratorio_informatica = '0' THEN 'N'
	   	WHEN in_laboratorio_informatica = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_patio_coberto = CASE
		WHEN in_patio_coberto = '0' THEN 'N'
	   	WHEN in_patio_coberto = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_patio_descoberto = CASE
		WHEN in_patio_descoberto = '0' THEN 'N'
	   	WHEN in_patio_descoberto = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_parque_infantil = CASE
		WHEN in_parque_infantil = '0' THEN 'N'
	   	WHEN in_parque_infantil = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_piscina = CASE
		WHEN in_piscina = '0' THEN 'N'
	   	WHEN in_piscina = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_quadra_esportes = CASE
		WHEN in_quadra_esportes = '0' THEN 'N'
	   	WHEN in_quadra_esportes = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_quadra_esportes_coberta = CASE
		WHEN in_quadra_esportes_coberta = '0' THEN 'N'
	   	WHEN in_quadra_esportes_coberta = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_quadra_esportes_descoberta = CASE
		WHEN in_quadra_esportes_descoberta = '0' THEN 'N'
	   	WHEN in_quadra_esportes_descoberta = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_refeitorio = CASE
		WHEN in_refeitorio = '0' THEN 'N'
	   	WHEN in_refeitorio = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_atelie_artes = CASE
		WHEN in_sala_atelie_artes = '0' THEN 'N'
	   	WHEN in_sala_atelie_artes = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_musica_coral = CASE
		WHEN in_sala_musica_coral = '0' THEN 'N'
	   	WHEN in_sala_musica_coral = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_estudio_danca = CASE
		WHEN in_sala_estudio_danca = '0' THEN 'N'
	   	WHEN in_sala_estudio_danca = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_multiuso = CASE
		WHEN in_sala_multiuso = '0' THEN 'N'
	   	WHEN in_sala_multiuso = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_diretoria = CASE
		WHEN in_sala_diretoria = '0' THEN 'N'
	   	WHEN in_sala_diretoria = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_leitura = CASE
		WHEN in_sala_leitura = '0' THEN 'N'
	   	WHEN in_sala_leitura = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_professor = CASE
		WHEN in_sala_professor = '0' THEN 'N'
	   	WHEN in_sala_professor = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_repouso_aluno = CASE
		WHEN in_sala_repouso_aluno = '0' THEN 'N'
	   	WHEN in_sala_repouso_aluno = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_secretaria = CASE
		WHEN in_secretaria = '0' THEN 'N'
	   	WHEN in_secretaria = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_sala_atendimento_especial = CASE
		WHEN in_sala_atendimento_especial = '0' THEN 'N'
	   	WHEN in_sala_atendimento_especial = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_terreirao = CASE
		WHEN in_terreirao = '0' THEN 'N'
	   	WHEN in_terreirao = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_viveiro = CASE
		WHEN in_viveiro = '0' THEN 'N'
	   	WHEN in_viveiro = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_dependencias_outras = CASE
		WHEN in_dependencias_outras = '0' THEN 'N'
	   	WHEN in_dependencias_outras = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_corrimao = CASE
		WHEN in_acessibilidade_corrimao = '0' THEN 'N'
	   	WHEN in_acessibilidade_corrimao = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_elevador = CASE
		WHEN in_acessibilidade_elevador = '0' THEN 'N'
	   	WHEN in_acessibilidade_elevador = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_pisos_tateis = CASE
		WHEN in_acessibilidade_pisos_tateis = '0' THEN 'N'
	   	WHEN in_acessibilidade_pisos_tateis = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_vao_livre = CASE
		WHEN in_acessibilidade_vao_livre = '0' THEN 'N'
	   	WHEN in_acessibilidade_vao_livre = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_rampas = CASE
		WHEN in_acessibilidade_rampas = '0' THEN 'N'
	   	WHEN in_acessibilidade_rampas = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_sinal_sonoro = CASE
		WHEN in_acessibilidade_sinal_sonoro = '0' THEN 'N'
	   	WHEN in_acessibilidade_sinal_sonoro = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_sinal_tatil = CASE
		WHEN in_acessibilidade_sinal_tatil = '0' THEN 'N'
	   	WHEN in_acessibilidade_sinal_tatil = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_sinal_visual = CASE
		WHEN in_acessibilidade_sinal_visual = '0' THEN 'N'
	   	WHEN in_acessibilidade_sinal_visual = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_acessibilidade_inexistente = CASE
		WHEN in_acessibilidade_inexistente = '0' THEN 'N'
	   	WHEN in_acessibilidade_inexistente = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_parabolica = CASE
		WHEN in_equip_parabolica = '0' THEN 'N'
	   	WHEN in_equip_parabolica = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_computador = CASE
		WHEN in_computador = '0' THEN 'N'
	   	WHEN in_computador = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_copiadora = CASE
		WHEN in_equip_copiadora = '0' THEN 'N'
	   	WHEN in_equip_copiadora = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_impressora = CASE
		WHEN in_equip_impressora = '0' THEN 'N'
	   	WHEN in_equip_impressora = '1' THEN 'S'
    END;
	
UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_impressora_mult = CASE
		WHEN in_equip_impressora_mult = '0' THEN 'N'
	   	WHEN in_equip_impressora_mult = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_scanner = CASE
		WHEN in_equip_scanner = '0' THEN 'N'
	   	WHEN in_equip_scanner = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_dvd = CASE
		WHEN in_equip_dvd = '0' THEN 'N'
	   	WHEN in_equip_dvd = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_som = CASE
		WHEN in_equip_som = '0' THEN 'N'
	   	WHEN in_equip_som = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_tv = CASE
		WHEN in_equip_tv = '0' THEN 'N'
	   	WHEN in_equip_tv = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_lousa_digital = CASE
		WHEN in_equip_lousa_digital = '0' THEN 'N'
	   	WHEN in_equip_lousa_digital = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_equip_multimidia = CASE
		WHEN in_equip_multimidia = '0' THEN 'N'
	   	WHEN in_equip_multimidia = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_desktop_aluno = CASE
		WHEN in_desktop_aluno = '0' THEN 'N'
	   	WHEN in_desktop_aluno = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comp_portatil_aluno = CASE
		WHEN in_comp_portatil_aluno = '0' THEN 'N'
	   	WHEN in_comp_portatil_aluno = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_tablet_aluno = CASE
		WHEN in_tablet_aluno = '0' THEN 'N'
	   	WHEN in_tablet_aluno = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_internet = CASE
		WHEN in_internet = '0' THEN 'N'
	   	WHEN in_internet = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_internet_alunos = CASE
		WHEN in_internet_alunos = '0' THEN 'N'
	   	WHEN in_internet_alunos = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_internet_administrativo = CASE
		WHEN in_internet_administrativo = '0' THEN 'N'
	   	WHEN in_internet_administrativo = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_internet_aprendizagem = CASE
		WHEN in_internet_aprendizagem = '0' THEN 'N'
	   	WHEN in_internet_aprendizagem = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_internet_comunidade = CASE
		WHEN in_internet_comunidade = '0' THEN 'N'
	   	WHEN in_internet_comunidade = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_acesso_internet_computador = CASE
		WHEN in_acesso_internet_computador = '0' THEN 'N'
	   	WHEN in_acesso_internet_computador = '1' THEN 'S'
		WHEN in_acesso_internet_computador = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_aces_internet_disp_pessoais = CASE
		WHEN in_aces_internet_disp_pessoais = '0' THEN 'N'
	   	WHEN in_aces_internet_disp_pessoais = '1' THEN 'S'
		WHEN in_aces_internet_disp_pessoais = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_rede_local = CASE
		WHEN tp_rede_local = '0' THEN 'Não há rede local interligando computadores'
	   	WHEN tp_rede_local = '1' THEN 'A cabo'
		WHEN tp_rede_local = '2' THEN 'Wireless'
		WHEN tp_rede_local = '3' THEN 'A cabo e Wireless'
		WHEN tp_rede_local = '9' THEN 'Não informado'
    END;





UPDATE 	censo_escolar_2019_escolas
SET 	in_banda_larga = CASE
		WHEN in_banda_larga = '0' THEN 'N'
	   	WHEN in_banda_larga = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_alimentacao = CASE
		WHEN in_alimentacao = '0' THEN 'Não oferece'
	   	WHEN in_alimentacao = '1' THEN 'Oferece'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_serie_ano = CASE
		WHEN in_serie_ano = '0' THEN 'N'
	   	WHEN in_serie_ano = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_periodos_semestrais = CASE
		WHEN in_periodos_semestrais = '0' THEN 'N'
	   	WHEN in_periodos_semestrais = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_fundamental_ciclos = CASE
		WHEN in_fundamental_ciclos = '0' THEN 'N'
	   	WHEN in_fundamental_ciclos = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_grupos_nao_seriados = CASE
		WHEN in_grupos_nao_seriados = '0' THEN 'N'
	   	WHEN in_grupos_nao_seriados = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_modulos = CASE
		WHEN in_modulos = '0' THEN 'N'
	   	WHEN in_modulos = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_formacao_alternancia = CASE
		WHEN in_formacao_alternancia = '0' THEN 'N'
	   	WHEN in_formacao_alternancia = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_multimidia = CASE
		WHEN in_material_ped_multimidia = '0' THEN 'N'
	   	WHEN in_material_ped_multimidia = '1' THEN 'S'
		WHEN in_material_ped_multimidia = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_infantil = CASE
		WHEN in_material_ped_infantil = '0' THEN 'N'
	   	WHEN in_material_ped_infantil = '1' THEN 'S'
		WHEN in_material_ped_infantil = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_cientifico = CASE
		WHEN in_material_ped_cientifico = '0' THEN 'N'
	   	WHEN in_material_ped_cientifico = '1' THEN 'S'
		WHEN in_material_ped_cientifico = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_difusao = CASE
		WHEN in_material_ped_difusao = '0' THEN 'N'
	   	WHEN in_material_ped_difusao = '1' THEN 'S'
		WHEN in_material_ped_difusao = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_musical = CASE
		WHEN in_material_ped_musical = '0' THEN 'N'
	   	WHEN in_material_ped_musical = '1' THEN 'S'
		WHEN in_material_ped_musical = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_jogos = CASE
		WHEN in_material_ped_jogos = '0' THEN 'N'
	   	WHEN in_material_ped_jogos = '1' THEN 'S'
		WHEN in_material_ped_jogos = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_artisticas = CASE
		WHEN in_material_ped_artisticas = '0' THEN 'N'
	   	WHEN in_material_ped_artisticas = '1' THEN 'S'
		WHEN in_material_ped_artisticas = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_desportiva = CASE
		WHEN in_material_ped_desportiva = '0' THEN 'N'
	   	WHEN in_material_ped_desportiva = '1' THEN 'S'
		WHEN in_material_ped_desportiva = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_indigena = CASE
		WHEN in_material_ped_indigena = '0' THEN 'N'
	   	WHEN in_material_ped_indigena = '1' THEN 'S'
		WHEN in_material_ped_indigena = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_etnico = CASE
		WHEN in_material_ped_etnico = '0' THEN 'N'
	   	WHEN in_material_ped_etnico = '1' THEN 'S'
		WHEN in_material_ped_etnico = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_material_ped_campo = CASE
		WHEN in_material_ped_campo = '0' THEN 'N'
	   	WHEN in_material_ped_campo = '1' THEN 'S'
		WHEN in_material_ped_campo = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_educacao_indigena = CASE
		WHEN in_educacao_indigena = '0' THEN 'N'
	   	WHEN in_educacao_indigena = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_indigena_lingua = CASE
		WHEN tp_indigena_lingua = '1' THEN 'Somente em Língua Indígena'
	   	WHEN tp_indigena_lingua = '2' THEN 'Somente em Língua Portuguesa'
		WHEN tp_indigena_lingua = '3' THEN 'Em Língua Indígena e em Língua Portuguesa'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_exame_selecao = CASE
		WHEN in_exame_selecao = '0' THEN 'N'
	   	WHEN in_exame_selecao = '1' THEN 'S'
		WHEN in_exame_selecao = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_reserva_ppi = CASE
		WHEN in_reserva_ppi = '0' THEN 'N'
	   	WHEN in_reserva_ppi = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_reserva_renda = CASE
		WHEN in_reserva_renda = '0' THEN 'N'
	   	WHEN in_reserva_renda = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_reserva_publica = CASE
		WHEN in_reserva_publica = '0' THEN 'N'
	   	WHEN in_reserva_publica = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_reserva_pcd = CASE
		WHEN in_reserva_pcd = '0' THEN 'N'
	   	WHEN in_reserva_pcd = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_reserva_outros = CASE
		WHEN in_reserva_outros = '0' THEN 'N'
	   	WHEN in_reserva_outros = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_reserva_nenhuma = CASE
		WHEN in_reserva_nenhuma = '0' THEN 'N'
	   	WHEN in_reserva_nenhuma = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_redes_sociais = CASE
		WHEN in_redes_sociais = '0' THEN 'N'
	   	WHEN in_redes_sociais = '1' THEN 'S'
		WHEN in_redes_sociais = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_espaco_atividade = CASE
		WHEN in_espaco_atividade = '0' THEN 'N'
	   	WHEN in_espaco_atividade = '1' THEN 'S'
		WHEN in_espaco_atividade = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_espaco_equipamento = CASE
		WHEN in_espaco_equipamento = '0' THEN 'N'
	   	WHEN in_espaco_equipamento = '1' THEN 'S'
		WHEN in_espaco_equipamento = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_orgao_ass_pais = CASE
		WHEN in_orgao_ass_pais = '0' THEN 'N'
	   	WHEN in_orgao_ass_pais = '1' THEN 'S'
	   	WHEN in_orgao_ass_pais = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_orgao_ass_pais_mestres = CASE
		WHEN in_orgao_ass_pais_mestres = '0' THEN 'N'
	   	WHEN in_orgao_ass_pais_mestres = '1' THEN 'S'
	   	WHEN in_orgao_ass_pais_mestres = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_orgao_conselho_escolar = CASE
		WHEN in_orgao_conselho_escolar = '0' THEN 'N'
	   	WHEN in_orgao_conselho_escolar = '1' THEN 'S'
	   	WHEN in_orgao_conselho_escolar = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_orgao_gremio_estudantil = CASE
		WHEN in_orgao_gremio_estudantil = '0' THEN 'N'
	   	WHEN in_orgao_gremio_estudantil = '1' THEN 'S'
	   	WHEN in_orgao_gremio_estudantil = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_orgao_outros = CASE
		WHEN in_orgao_outros = '0' THEN 'N'
	   	WHEN in_orgao_outros = '1' THEN 'S'
	   	WHEN in_orgao_outros = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_orgao_nenhum = CASE
		WHEN in_orgao_nenhum = '0' THEN 'N'
	   	WHEN in_orgao_nenhum = '1' THEN 'S'
	   	WHEN in_orgao_nenhum = '9' THEN 'Não informado'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_proposta_pedagogica = CASE
		WHEN tp_proposta_pedagogica = '0' THEN 'N'
	   	WHEN tp_proposta_pedagogica = '1' THEN 'S'
		WHEN tp_proposta_pedagogica = '2' THEN 'A escola não possui projeto político pedagógico/proposta pedagógica'
		WHEN tp_proposta_pedagogica = '9' THEN 'Não informado'		
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_aee = CASE
		WHEN tp_aee = '0' THEN 'Não oferece'
	   	WHEN tp_aee = '1' THEN 'Não exclusivamente'
		WHEN tp_aee = '2' THEN 'Exclusivamente'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	tp_atividade_complementar = CASE
		WHEN tp_atividade_complementar = '0' THEN 'Não oferece'
	   	WHEN tp_atividade_complementar = '1' THEN 'Não exclusivamente'
		WHEN tp_atividade_complementar = '2' THEN 'Exclusivamente'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mediacao_presencial = CASE
		WHEN in_mediacao_presencial = '0' THEN 'N'
	   	WHEN in_mediacao_presencial = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mediacao_semipresencial = CASE
		WHEN in_mediacao_semipresencial = '0' THEN 'N'
	   	WHEN in_mediacao_semipresencial = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_mediacao_ead = CASE
		WHEN in_mediacao_ead = '0' THEN 'N'
	   	WHEN in_mediacao_ead = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_especial_exclusiva = CASE
		WHEN in_especial_exclusiva = '0' THEN 'N'
	   	WHEN in_especial_exclusiva = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_regular = CASE
		WHEN in_regular = '0' THEN 'N'
	   	WHEN in_regular = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_eja = CASE
		WHEN in_eja = '0' THEN 'N'
	   	WHEN in_eja = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_profissionalizante = CASE
		WHEN in_profissionalizante = '0' THEN 'N'
	   	WHEN in_profissionalizante = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_creche = CASE
		WHEN in_comum_creche = '0' THEN 'N'
	   	WHEN in_comum_creche = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_pre = CASE
		WHEN in_comum_pre = '0' THEN 'N'
	   	WHEN in_comum_pre = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_fund_ai = CASE
		WHEN in_comum_fund_ai = '0' THEN 'N'
	   	WHEN in_comum_fund_ai = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_fund_af = CASE
		WHEN in_comum_fund_af = '0' THEN 'N'
	   	WHEN in_comum_fund_af = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_medio_medio = CASE
		WHEN in_comum_medio_medio = '0' THEN 'N'
	   	WHEN in_comum_medio_medio = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_medio_integrado = CASE
		WHEN in_comum_medio_integrado = '0' THEN 'N'
	   	WHEN in_comum_medio_integrado = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_medio_normal = CASE
		WHEN in_comum_medio_normal = '0' THEN 'N'
	   	WHEN in_comum_medio_normal = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_creche = CASE
		WHEN in_esp_exclusiva_creche = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_creche = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_pre = CASE
		WHEN in_esp_exclusiva_pre = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_pre = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_fund_ai = CASE
		WHEN in_esp_exclusiva_fund_ai = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_fund_ai = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_fund_af = CASE
		WHEN in_esp_exclusiva_fund_af = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_fund_af = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_medio_medio = CASE
		WHEN in_esp_exclusiva_medio_medio = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_medio_medio = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_medio_integr = CASE
		WHEN in_esp_exclusiva_medio_integr = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_medio_integr = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_medio_normal = CASE
		WHEN in_esp_exclusiva_medio_normal = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_medio_normal = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_eja_fund = CASE
		WHEN in_comum_eja_fund = '0' THEN 'N'
	   	WHEN in_comum_eja_fund = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_eja_medio = CASE
		WHEN in_comum_eja_medio = '0' THEN 'N'
	   	WHEN in_comum_eja_medio = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_eja_prof = CASE
		WHEN in_comum_eja_prof = '0' THEN 'N'
	   	WHEN in_comum_eja_prof = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_eja_fund = CASE
		WHEN in_esp_exclusiva_eja_fund = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_eja_fund = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_eja_medio = CASE
		WHEN in_esp_exclusiva_eja_medio = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_eja_medio = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_eja_prof = CASE
		WHEN in_esp_exclusiva_eja_prof = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_eja_prof = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_comum_prof = CASE
		WHEN in_comum_prof = '0' THEN 'N'
	   	WHEN in_comum_prof = '1' THEN 'S'
    END;

UPDATE 	censo_escolar_2019_escolas
SET 	in_esp_exclusiva_prof = CASE
		WHEN in_esp_exclusiva_prof = '0' THEN 'N'
	   	WHEN in_esp_exclusiva_prof = '1' THEN 'S'
    END;