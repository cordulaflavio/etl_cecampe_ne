-- Tabela da tabela key_ideges_ref2020_censo_escolar_2020 para relacionar ideges ref2020 a censo_escolar_2020_escolas
-- ideges --> ano_ref_ideges = 2020
-- olinda_pdde_adesao_atualizacao --> an_exercicio = 2020

-- key_ideges_ref2020_censo_escolar_2020
-- Insere dados de olinda_pdde_adesao_atualizacao
-- insere só os cnpj que estão nas duas tabelas!
CREATE TABLE key_ideges_ref2020_censo_escolar_2020 as 
(SELECT nu_cgc_entidade, an_exercicio, co_escola
 FROM 	olinda_pdde_adesao_atualizacao 
 WHERE 	nu_cgc_entidade IN (SELECT distinct pdde.nu_cgc_entidade
							FROM olinda_pdde_adesao_atualizacao pdde
							INNER JOIN ideges
							ON	pdde.nu_cgc_entidade = ideges.cnpj
						    AND ideges.ano_ref_ideges = 2020)
		AND an_exercicio IN (2020));
				
select count(*) from key_ideges_ref2020_censo_escolar_2020 -- 119641

-- Alterar nome da coluna!
ALTER TABLE key_ideges_ref2020_censo_escolar_2020 
RENAME COLUMN nu_cgc_entidade TO cnpj;

ALTER TABLE key_ideges_ref2020_censo_escolar_2020 
RENAME COLUMN an_exercicio TO ano_ref_ideges;

-- Aqui são os cnpj que estão na tabela KEY e não estão na tabela ideges.
-- Não pode ter em excesso. Tem que ser zero.
SELECT distinct pdde.cnpj
FROM key_ideges_ref2020_censo_escolar_2020 pdde 
LEFT JOIN ideges
ON	pdde.cnpj = ideges.cnpj
WHERE ideges.cnpj IS NULL

-- Confirmar que não há cnpj nem ano_ref_ideges nem cod_escola NULL
select count (distinct cnpj) from key_ideges_ref2020_censo_escolar_2020 where cnpj IS NULL
select count (distinct ano_ref_ideges) from key_ideges_ref2020_censo_escolar_2020 where ano_ref_ideges IS NULL
select count (distinct co_escola) from key_ideges_ref2020_censo_escolar_2020 where co_escola IS NULL

-- Agora tem que ver se ta faltando.
-- Tá faltando (130849-115573) = 15276 (8493 do nordeste)
-- Esse número tem que ser igual ao da próxima consulta. 
select count(distinct cnpj) from ideges where ano_ref_ideges = 2020 --130849
select count (distinct cnpj) from key_ideges_ref2020_censo_escolar_2020 --115573 

-- cnpj que está em ideges(2020) e nao esta na tabela key_ideges_ref2020_censo_escolar_2020
SELECT distinct ideges.cnpj
FROM key_ideges_ref2020_censo_escolar_2020 a 
RIGHT JOIN ideges
ON	a.cnpj = ideges.cnpj
WHERE a.cnpj IS NULL
AND ideges.ano_ref_ideges = 2020
AND ideges.cod_regiao = 2

----------------------------------------------------------
---------------- CRIAR RELACIONAMENTO N:N ----------------
----------------------------------------------------------

ALTER TABLE key_ideges_ref2020_censo_escolar_2020 ADD PRIMARY KEY (cnpj, ano_ref_ideges, co_escola);

--Esse relacionameno tem que dar certo de primeira!
ALTER TABLE key_ideges_ref2020_censo_escolar_2020
ADD CONSTRAINT fk_cnpj_ideges2020 FOREIGN KEY (cnpj, ano_ref_ideges) 
REFERENCES ideges (cnpj, ano_ref_ideges);

--Pode ter erro de códigos e escolas!
ALTER TABLE key_ideges_ref2020_censo_escolar_2020
ADD CONSTRAINT fk_cnpj_escola2020 FOREIGN KEY (co_escola) 
REFERENCES censo_escolar_2020_escolas (co_entidade);
-- ERROR:  insert or update on table "key_ideges_ref2020_censo_escolar_2020" violates foreign key constraint "fk_cnpj_escola2020"
-- erro na FKEY

-- Aqui são os co_escola que estão na tabela KEY e não estão na tabela ideges.
-- Não pode ter em excesso. DELETANDO.
DELETE FROM key_ideges_ref2020_censo_escolar_2020
WHERE co_escola IN (SELECT distinct pdde.co_escola
					FROM key_ideges_ref2020_censo_escolar_2020 pdde 
					LEFT JOIN censo_escolar_2020_escolas escola
					ON	pdde.co_escola = escola.co_entidade
					WHERE escola.co_entidade IS NULL)

ALTER TABLE key_ideges_ref2020_censo_escolar_2020
ADD CONSTRAINT fk_cnpj_escola2020 FOREIGN KEY (co_escola) 
REFERENCES censo_escolar_2020_escolas (co_entidade);

-----------------------------------------------------------------------------------------
-- Agora tem que ver se ta faltando.
-- Tá faltando (130849-115546) = 14816 (8497 do nordeste)
-- Esse número tem que ser igual ao da próxima consulta. 
select count(distinct cnpj) from ideges where ano_ref_ideges = 2020 --130849
select count (distinct cnpj) from key_ideges_ref2020_censo_escolar_2020 --115546

-- cnpj que está em ideges(2020) e nao esta na tabela key_ideges_ref2020_censo_escolar_2020
select * from ideges
where cnpj IN ( SELECT distinct ideges.cnpj
					FROM key_ideges_ref2020_censo_escolar_2020 a 
					RIGHT JOIN ideges
					ON	a.cnpj = ideges.cnpj
					WHERE a.cnpj IS NULL
					AND ideges.ano_ref_ideges = 2020
					AND ideges.cod_regiao = 2)
				AND ano_ref_ideges = 2020

select count(*) from key_ideges_ref2020_censo_escolar_2020--119614