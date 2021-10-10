-- Tabela da tabela key_ideges_ref2017_censo_escolar_2017 para relacionar ideges ref2017 a censo_escolar_2017_escolas
-- ideges --> ano_ref_ideges = 2017
-- olinda_pdde_adesao_atualizacao --> an_exercicio = 2017

-- key_ideges_ref2017_censo_escolar_2017
-- Insere dados de olinda_pdde_adesao_atualizacao
-- insere só os cnpj que estão nas duas tabelas!
CREATE TABLE key_ideges_ref2017_censo_escolar_2017 as 
(SELECT nu_cgc_entidade, an_exercicio, co_escola
 FROM 	olinda_pdde_adesao_atualizacao 
 WHERE 	nu_cgc_entidade IN (SELECT distinct pdde.nu_cgc_entidade
							FROM olinda_pdde_adesao_atualizacao pdde
							INNER JOIN ideges
							ON	pdde.nu_cgc_entidade = ideges.cnpj
						    AND ideges.ano_ref_ideges = 2017)
		AND an_exercicio IN (2017));
				
select count(*) from key_ideges_ref2017_censo_escolar_2017 -- 122580

-- Alterar nome da coluna!
ALTER TABLE key_ideges_ref2017_censo_escolar_2017 
RENAME COLUMN nu_cgc_entidade TO cnpj;

ALTER TABLE key_ideges_ref2017_censo_escolar_2017 
RENAME COLUMN an_exercicio TO ano_ref_ideges;

-- Aqui são os cnpj que estão na tabela KEY e não estão na tabela ideges.
-- Não pode ter em excesso. Tem que ser zero.
SELECT distinct pdde.cnpj
FROM key_ideges_ref2017_censo_escolar_2017 pdde 
LEFT JOIN ideges
ON	pdde.cnpj = ideges.cnpj
WHERE ideges.cnpj IS NULL

-- Confirmar que não há cnpj nem ano_ref_ideges nem cod_escola NULL
select count (distinct cnpj) from key_ideges_ref2017_censo_escolar_2017 where cnpj IS NULL
select count (distinct ano_ref_ideges) from key_ideges_ref2017_censo_escolar_2017 where ano_ref_ideges IS NULL
select count (distinct co_escola) from key_ideges_ref2017_censo_escolar_2017 where co_escola IS NULL

-- Agora tem que ver se ta faltando.
-- Tá faltando (132198-117382) = 14816 (6370 do nordeste)
-- Esse número tem que ser igual ao da próxima consulta. 
select count(distinct cnpj) from ideges where ano_ref_ideges = 2017 --132198
select count (distinct cnpj) from key_ideges_ref2017_censo_escolar_2017 --117382 

-- cnpj que está em ideges(2017) e nao esta na tabela key_ideges_ref2017_censo_escolar_2017
SELECT distinct ideges.cnpj
FROM key_ideges_ref2017_censo_escolar_2017 a 
RIGHT JOIN ideges
ON	a.cnpj = ideges.cnpj
WHERE a.cnpj IS NULL
AND ideges.ano_ref_ideges = 2017
AND ideges.cod_regiao = 2

----------------------------------------------------------
---------------- CRIAR RELACIONAMENTO N:N ----------------
----------------------------------------------------------

ALTER TABLE key_ideges_ref2017_censo_escolar_2017 ADD PRIMARY KEY (cnpj, ano_ref_ideges, co_escola);

--Esse relacionameno tem que dar certo de primeira!
ALTER TABLE key_ideges_ref2017_censo_escolar_2017
ADD CONSTRAINT fk_cnpj_ideges2017 FOREIGN KEY (cnpj, ano_ref_ideges) 
REFERENCES ideges (cnpj, ano_ref_ideges);

--Pode ter erro de códigos e escolas!
ALTER TABLE key_ideges_ref2017_censo_escolar_2017
ADD CONSTRAINT fk_cnpj_escola2017 FOREIGN KEY (co_escola) 
REFERENCES censo_escolar_2017_escolas (co_entidade);
-- ERROR:  insert or update on table "key_ideges_ref2017_censo_escolar_2017" violates foreign key constraint "fk_cnpj_escola2017"
-- erro na FKEY

-- Aqui são os co_escola que estão na tabela KEY e não estão na tabela ideges.
-- Não pode ter em excesso. DELETANDO.
DELETE FROM key_ideges_ref2017_censo_escolar_2017
WHERE co_escola IN (SELECT distinct pdde.co_escola
					FROM key_ideges_ref2017_censo_escolar_2017 pdde 
					LEFT JOIN censo_escolar_2017_escolas escola
					ON	pdde.co_escola = escola.co_entidade
					WHERE escola.co_entidade IS NULL)

ALTER TABLE key_ideges_ref2017_censo_escolar_2017
ADD CONSTRAINT fk_cnpj_escola2017 FOREIGN KEY (co_escola) 
REFERENCES censo_escolar_2017_escolas (co_entidade);

-----------------------------------------------------------------------------------------
-- Agora tem que ver se ta faltando.
-- Tá faltando (132198-117354) = 14816 (6381 do nordeste)
-- Esse número tem que ser igual ao da próxima consulta. 
select count(distinct cnpj) from ideges where ano_ref_ideges = 2017 --132198
select count (distinct cnpj) from key_ideges_ref2017_censo_escolar_2017 --117354

-- cnpj que está em ideges(2017) e nao esta na tabela key_ideges_ref2017_censo_escolar_2017
select * from ideges
where cnpj IN ( SELECT distinct ideges.cnpj
					FROM key_ideges_ref2017_censo_escolar_2017 a 
					RIGHT JOIN ideges
					ON	a.cnpj = ideges.cnpj
					WHERE a.cnpj IS NULL
					AND ideges.ano_ref_ideges = 2017
					AND ideges.cod_regiao = 2)
				AND ano_ref_ideges = 2017

select count(*) from key_ideges_ref2017_censo_escolar_2017--122543