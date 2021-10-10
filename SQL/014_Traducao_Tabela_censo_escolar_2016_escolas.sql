SELECT * FROM censo_escolar_2016_escolas limit 100

UPDATE 	censo_escolar_2016_escolas
SET 	tp_situacao_funcionamento = CASE
		WHEN tp_situacao_funcionamento = '1' THEN 'Em Atividade'
	   	WHEN tp_situacao_funcionamento = '2' THEN 'Paralisada'
		WHEN tp_situacao_funcionamento = '3' THEN 'Extinta (ano do Censo)'
		WHEN tp_situacao_funcionamento = '4' THEN 'Extinta em Anos Anteriores'
    END;

UPDATE 	censo_escolar_2016_escolas
SET 	tp_dependencia = CASE
		WHEN tp_dependencia = '1' THEN 'Federal'
	   	WHEN tp_dependencia = '2' THEN 'Estadual'
		WHEN tp_dependencia = '3' THEN 'Municipal'
		WHEN tp_dependencia = '4' THEN 'Privada'
    END;

UPDATE 	censo_escolar_2016_escolas
SET 	tp_localizacao = CASE
		WHEN tp_localizacao = '1' THEN 'Urbana'
	   	WHEN tp_localizacao = '2' THEN 'Rural'
    END;

--Em breve.