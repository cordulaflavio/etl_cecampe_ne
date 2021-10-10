------------------------------------------------------------
---------------- censo_escolar_2016_escolas ----------------
------------------------------------------------------------

--FOREIGN KEY para ibge_regioes
ALTER TABLE censo_escolar_2016_escolas
ADD CONSTRAINT fk_regiao FOREIGN KEY (co_regiao) 
REFERENCES ibge_regioes (cod_regiao);

--FOREIGN KEY para ibge_estados
ALTER TABLE censo_escolar_2016_escolas
ADD CONSTRAINT fk_estado FOREIGN KEY (co_uf) 
REFERENCES ibge_estados(cod_uf_ibge);

--FOREIGN KEY para ibge_relatorio_dtb_brasil_municipio
ALTER TABLE censo_escolar_2016_escolas
ADD CONSTRAINT fk_municipio FOREIGN KEY (co_municipio) 
REFERENCES ibge_relatorio_dtb_brasil_municipio (cod_municipio_completo);

------------------------------------------------------------
---------------- censo_escolar_2017_escolas ----------------
------------------------------------------------------------

--FOREIGN KEY para ibge_regioes
ALTER TABLE censo_escolar_2017_escolas
ADD CONSTRAINT fk_regiao FOREIGN KEY (co_regiao) 
REFERENCES ibge_regioes (cod_regiao);

--FOREIGN KEY para ibge_estados
ALTER TABLE censo_escolar_2017_escolas
ADD CONSTRAINT fk_estado FOREIGN KEY (co_uf) 
REFERENCES ibge_estados(cod_uf_ibge);

--FOREIGN KEY para ibge_relatorio_dtb_brasil_municipio
ALTER TABLE censo_escolar_2017_escolas
ADD CONSTRAINT fk_municipio FOREIGN KEY (co_municipio) 
REFERENCES ibge_relatorio_dtb_brasil_municipio (cod_municipio_completo);

------------------------------------------------------------
---------------- censo_escolar_2018_escolas ----------------
------------------------------------------------------------

--FOREIGN KEY para ibge_regioes
ALTER TABLE censo_escolar_2018_escolas
ADD CONSTRAINT fk_regiao FOREIGN KEY (co_regiao) 
REFERENCES ibge_regioes (cod_regiao);

--FOREIGN KEY para ibge_estados
ALTER TABLE censo_escolar_2018_escolas
ADD CONSTRAINT fk_estado FOREIGN KEY (co_uf) 
REFERENCES ibge_estados(cod_uf_ibge);

--FOREIGN KEY para ibge_relatorio_dtb_brasil_municipio
ALTER TABLE censo_escolar_2018_escolas
ADD CONSTRAINT fk_municipio FOREIGN KEY (co_municipio) 
REFERENCES ibge_relatorio_dtb_brasil_municipio (cod_municipio_completo);

------------------------------------------------------------
---------------- censo_escolar_2019_escolas ----------------
------------------------------------------------------------

--FOREIGN KEY para ibge_regioes
ALTER TABLE censo_escolar_2019_escolas
ADD CONSTRAINT fk_regiao FOREIGN KEY (co_regiao) 
REFERENCES ibge_regioes (cod_regiao);

--FOREIGN KEY para ibge_estados
ALTER TABLE censo_escolar_2019_escolas
ADD CONSTRAINT fk_estado FOREIGN KEY (co_uf) 
REFERENCES ibge_estados(cod_uf_ibge);

--FOREIGN KEY para ibge_relatorio_dtb_brasil_municipio
ALTER TABLE censo_escolar_2019_escolas
ADD CONSTRAINT fk_municipio FOREIGN KEY (co_municipio) 
REFERENCES ibge_relatorio_dtb_brasil_municipio (cod_municipio_completo);

------------------------------------------------------------
---------------- censo_escolar_2020_escolas ----------------
------------------------------------------------------------

--FOREIGN KEY para ibge_regioes
ALTER TABLE censo_escolar_2020_escolas
ADD CONSTRAINT fk_regiao FOREIGN KEY (co_regiao) 
REFERENCES ibge_regioes (cod_regiao);

--FOREIGN KEY para ibge_estados
ALTER TABLE censo_escolar_2020_escolas
ADD CONSTRAINT fk_estado FOREIGN KEY (co_uf) 
REFERENCES ibge_estados(cod_uf_ibge);

--FOREIGN KEY para ibge_relatorio_dtb_brasil_municipio
ALTER TABLE censo_escolar_2020_escolas
ADD CONSTRAINT fk_municipio FOREIGN KEY (co_municipio) 
REFERENCES ibge_relatorio_dtb_brasil_municipio (cod_municipio_completo);
