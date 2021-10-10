SELECT * FROM censo_escolar_2020_escolas limit 100

UPDATE 	censo_escolar_2020_escolas
SET 	tp_situacao_funcionamento = CASE
		WHEN tp_situacao_funcionamento = '1' THEN 'Em Atividade'
	   	WHEN tp_situacao_funcionamento = '2' THEN 'Paralisada'
		WHEN tp_situacao_funcionamento = '3' THEN 'Extinta (ano do Censo)'
		WHEN tp_situacao_funcionamento = '4' THEN 'Extinta em Anos Anteriores'
    END;

UPDATE 	censo_escolar_2020_escolas
SET 	tp_dependencia = CASE
		WHEN tp_dependencia = '1' THEN 'Federal'
	   	WHEN tp_dependencia = '2' THEN 'Estadual'
		WHEN tp_dependencia = '3' THEN 'Municipal'
		WHEN tp_dependencia = '4' THEN 'Privada'
    END;

UPDATE 	censo_escolar_2020_escolas
SET 	tp_localizacao = CASE
		WHEN tp_localizacao = '1' THEN 'Urbana'
	   	WHEN tp_localizacao = '2' THEN 'Rural'
    END;

UPDATE 	censo_escolar_2020_escolas
SET 	tp_localizacao_diferenciada = CASE
		WHEN tp_localizacao_diferenciada = '0' THEN 'A escola não está em área de localização diferenciada'
		WHEN tp_localizacao_diferenciada = '1' THEN 'Área de assentamento'
	   	WHEN tp_localizacao_diferenciada = '2' THEN 'Terra indígena'
		WHEN tp_localizacao_diferenciada = '3' THEN 'Área onde se localiza comunidade remanescente de quilombos'
    END;

--Em breve.

