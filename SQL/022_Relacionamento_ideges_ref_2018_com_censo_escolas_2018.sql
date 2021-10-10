-- Tabela da tabela key_ideges_ref2018_censo_escolar_2018 para relacionar ideges ref2018 a censo_escolar_2018_escolas
-- ideges --> ano_ref_ideges = 2018
-- olinda_pdde_adesao_atualizacao --> an_exercicio = 2018

-- key_ideges_ref2018_censo_escolar_2018
-- Insere dados de olinda_pdde_adesao_atualizacao
-- insere só os cnpj que estão nas duas tabelas!
CREATE TABLE key_ideges_ref2018_censo_escolar_2018 as 
(SELECT nu_cgc_entidade, an_exercicio, co_escola
 FROM 	olinda_pdde_adesao_atualizacao 
 WHERE 	nu_cgc_entidade IN (SELECT distinct pdde.nu_cgc_entidade
							FROM olinda_pdde_adesao_atualizacao pdde
							INNER JOIN ideges
							ON	pdde.nu_cgc_entidade = ideges.cnpj
						    AND ideges.ano_ref_ideges = 2018)
		AND an_exercicio IN (2018));
				
select count(*) from key_ideges_ref2018_censo_escolar_2018 -- 121968

-- Alterar nome da coluna!
ALTER TABLE key_ideges_ref2018_censo_escolar_2018 
RENAME COLUMN nu_cgc_entidade TO cnpj;

ALTER TABLE key_ideges_ref2018_censo_escolar_2018 
RENAME COLUMN an_exercicio TO ano_ref_ideges;

-- Aqui são os cnpj que estão na tabela KEY e não estão na tabela ideges.
-- Não pode ter em excesso. Tem que ser zero.
SELECT distinct pdde.cnpj
FROM key_ideges_ref2018_censo_escolar_2018 pdde 
LEFT JOIN ideges
ON	pdde.cnpj = ideges.cnpj
WHERE ideges.cnpj IS NULL

-- Confirmar que não há cnpj nem ano_ref_ideges nem cod_escola NULL
select count (distinct cnpj) from key_ideges_ref2018_censo_escolar_2018 where cnpj IS NULL
select count (distinct ano_ref_ideges) from key_ideges_ref2018_censo_escolar_2018 where ano_ref_ideges IS NULL
select count (distinct co_escola) from key_ideges_ref2018_censo_escolar_2018 where co_escola IS NULL

-- Agora tem que ver se ta faltando.
-- Tá faltando (135775-117172) = 18603 (8734 do nordeste)
-- Esse número tem que ser igual ao da próxima consulta. 
select count(distinct cnpj) from ideges where ano_ref_ideges = 2018 --135775
select count (distinct cnpj) from key_ideges_ref2018_censo_escolar_2018 --117172 

-- cnpj que está em ideges(2018) e nao esta na tabela key_ideges_ref2018_censo_escolar_2018
SELECT distinct ideges.cnpj
FROM key_ideges_ref2018_censo_escolar_2018 a 
RIGHT JOIN ideges
ON	a.cnpj = ideges.cnpj
WHERE a.cnpj IS NULL
AND ideges.ano_ref_ideges = 2018
AND ideges.cod_regiao = 2

----------------------------------------------------------
---------------- CRIAR RELACIONAMENTO N:N ----------------
----------------------------------------------------------

ALTER TABLE key_ideges_ref2018_censo_escolar_2018 ADD PRIMARY KEY (cnpj, ano_ref_ideges, co_escola);

--Esse relacionameno tem que dar certo de primeira!
ALTER TABLE key_ideges_ref2018_censo_escolar_2018
ADD CONSTRAINT fk_cnpj_ideges2018 FOREIGN KEY (cnpj, ano_ref_ideges) 
REFERENCES ideges (cnpj, ano_ref_ideges);

--Pode ter erro de códigos e escolas!
ALTER TABLE key_ideges_ref2018_censo_escolar_2018
ADD CONSTRAINT fk_cnpj_escola2018 FOREIGN KEY (co_escola) 
REFERENCES censo_escolar_2018_escolas (co_entidade);
-- ERROR:  insert or update on table "key_ideges_ref2018_censo_escolar_2018" violates foreign key constraint "fk_cnpj_escola2018"
-- erro na FKEY

-- Aqui são os co_escola que estão na tabela KEY e não estão na tabela ideges.
-- Não pode ter em excesso. DELETANDO.
DELETE FROM key_ideges_ref2018_censo_escolar_2018
WHERE co_escola IN (SELECT distinct pdde.co_escola
					FROM key_ideges_ref2018_censo_escolar_2018 pdde 
					LEFT JOIN censo_escolar_2018_escolas escola
					ON	pdde.co_escola = escola.co_entidade
					WHERE escola.co_entidade IS NULL)

ALTER TABLE key_ideges_ref2018_censo_escolar_2018
ADD CONSTRAINT fk_cnpj_escola2018 FOREIGN KEY (co_escola) 
REFERENCES censo_escolar_2018_escolas (co_entidade);

-----------------------------------------------------------------------------------------
-- Agora tem que ver se ta faltando.
-- Tá faltando (135775-117162) = 18613 (8734 do nordeste)
-- Esse número tem que ser igual ao da próxima consulta. 
select count(distinct cnpj) from ideges where ano_ref_ideges = 2018 --135775
select count (distinct cnpj) from key_ideges_ref2018_censo_escolar_2018 --117162

-- cnpj que está em ideges(2018) e nao esta na tabela key_ideges_ref2018_censo_escolar_2018
select * from ideges
where cnpj IN ( SELECT distinct ideges.cnpj
					FROM key_ideges_ref2018_censo_escolar_2018 a 
					RIGHT JOIN ideges
					ON	a.cnpj = ideges.cnpj
					WHERE a.cnpj IS NULL
					AND ideges.ano_ref_ideges = 2018
					AND ideges.cod_regiao = 2)
				AND ano_ref_ideges = 2018

select count(*) from key_ideges_ref2018_censo_escolar_2018--121958

