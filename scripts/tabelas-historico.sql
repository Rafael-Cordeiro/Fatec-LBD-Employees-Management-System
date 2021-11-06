-- Apontamentos

CREATE TABLE H_APONTAMENTOS (
    hapo_id         NUMBER(6),
    hapo_dia        DATE,
    hapo_entrada    DATE,
    hapo_almoco     DATE,
    hapo_volta      DATE,
    hapo_saida      DATE,
    hapo_fun_id     NUMBER(6),
    hapo_dt_entrada TIMESTAMP
);

ALTER TABLE H_APONTAMENTOS
ADD CONSTRAINT PK_HAPO PRIMARY KEY (hapo_id, hapo_dt_entrada);

-- Banco de Horas

CREATE TABLE H_BANCO_HORAS (
    hban_id            NUMBER(6),
    hban_mes           DATE,
    hban_horas_extras  NUMBER(5,2),
    hban_fun_id        NUMBER(6),
    hban_dt_entrada    TIMESTAMP
);

ALTER TABLE H_BANCO_HORAS
ADD CONSTRAINT PK_HBAN PRIMARY KEY (hban_id, hban_dt_entrada);

-- Cargos

CREATE TABLE H_CARGOS (
    hcar_id         NUMBER(6),
    hcar_descricao  VARCHAR2(255),
    hcar_dt_entrada TIMESTAMP
);

ALTER TABLE H_CARGOS
ADD CONSTRAINT PK_HCAR PRIMARY KEY (hcar_id, hcar_dt_entrada);

-- Cidades

CREATE TABLE H_CIDADES (
    hcid_id         NUMBER(6),
    hcid_nome       VARCHAR2(255),
    hcid_codigo     VARCHAR2(255),
    hcid_est_id     NUMBER(6),
    hcid_dt_entrada TIMESTAMP
);

ALTER TABLE H_CIDADES
ADD CONSTRAINT PK_HCID PRIMARY KEY (hcid_id, hcid_dt_entrada);

-- Departamentos

CREATE TABLE H_DEPARTAMENTOS (
    hdep_id         NUMBER(6),
    hdep_descricao  VARCHAR2(255),
    hdep_dt_entrada TIMESTAMP
);

ALTER TABLE H_DEPARTAMENTOS
ADD CONSTRAINT PK_HDEP PRIMARY KEY (hdep_id, hdep_dt_entrada);

-- Estados

CREATE TABLE H_ESTADOS (
    hest_id         NUMBER(6),
    hest_nome       VARCHAR2(255),
    hest_codigo_uf  CHAR(2),
    hest_dt_entrada TIMESTAMP
);

ALTER TABLE H_ESTADOS
ADD CONSTRAINT PK_HEST PRIMARY KEY (hest_id, hest_dt_entrada);

-- Funcionários

CREATE TABLE H_FUNCIONARIOS (
    hfun_id                    NUMBER(6),
    hfun_matricula             VARCHAR2(255),
    hfun_primeiro_nome         VARCHAR2(15),
    hfun_nome_meio             VARCHAR2(30),
    hfun_ultimo_nome           VARCHAR2(15),
    hfun_data_nascimento       DATE,
    hfun_sexo                  CHAR(1),
    hfun_telefone_residencial  VARCHAR2(255),
    hfun_telefone_movel        VARCHAR2(255),
    hfun_data_contratacao      DATE,
    hfun_car_id                NUMBER(6),
    hfun_salario               VARCHAR2(255),
    hfun_dep_id                NUMBER(6),
    hfun_fun_id                NUMBER(6),
    hfun_end_cep               VARCHAR2(255),
    hfun_end_logradouro        VARCHAR2(255),
    hfun_end_numero            VARCHAR2(255),
    hfun_end_complemento       VARCHAR2(255),
    hfun_end_bairro            VARCHAR2(255),
    hfun_cid_id                NUMBER(6),
    hfun_dt_entrada            TIMESTAMP
);

ALTER TABLE H_FUNCIONARIOS
ADD CONSTRAINT PK_HFUN PRIMARY KEY (hfun_id, hfun_dt_entrada);

-- Turnos

CREATE TABLE H_TURNOS ( 
    htur_id            NUMBER(6),
    htur_hora_entrada  DATE,
    htur_hora_saida    DATE,
    htur_almoco        NUMBER(5, 2),
    htur_dom           CHAR(1),
    htur_seg           CHAR(1),
    htur_ter           CHAR(1),
    htur_qua           CHAR(1),
    htur_qui           CHAR(1),
    htur_sex           CHAR(1),
    htur_sab           CHAR(1),
    htur_dt_entrada    TIMESTAMP
);

ALTER TABLE H_TURNOS
ADD CONSTRAINT PK_HTUR PRIMARY KEY (htur_id, htur_dt_entrada);

-- Triggers

CREATE TRIGGER tg_hist_apo
BEFORE UPDATE OR DELETE ON APONTAMENTOS
FOR EACH ROW
BEGIN
    INSERT INTO H_APONTAMENTOS VALUES (
        :old.apo_id,
        :old.apo_dia,
        :old.apo_entrada,
        :old.apo_almoco,
        :old.apo_volta,
        :old.apo_saida,
        :old.apo_fun_id,
        sysdate
    );
END;

CREATE TRIGGER tg_hist_ban
BEFORE UPDATE OR DELETE ON BANCO_HORAS  
FOR EACH ROW
BEGIN
    INSERT INTO H_BANCO_HORAS VALUES (
        :old.ban_id,
        :old.ban_mes,
        :old.ban_horas_extras,
        :old.ban_fun_id,
        sysdate
    );
END;

CREATE TRIGGER tg_hist_car
BEFORE UPDATE OR DELETE ON CARGOS  
FOR EACH ROW
BEGIN
    INSERT INTO H_CARGOS VALUES (
        :old.car_id,
        :old.car_descricao,
        sysdate
    );
END;

CREATE TRIGGER tg_hist_cid
BEFORE UPDATE OR DELETE ON CIDADES
FOR EACH ROW
BEGIN
    INSERT INTO H_CIDADES VALUES (
        :old.cid_id,
        :old.cid_nome,
        :old.cid_codigo,
        :old.cid_est_id,
        sysdate
    );
END;

CREATE TRIGGER tg_hist_dep
BEFORE UPDATE OR DELETE ON DEPARTAMENTOS
FOR EACH ROW
BEGIN
    INSERT INTO H_DEPARTAMENTOS VALUES (
        :old.dep_id,
        :old.dep_descricao,
        sysdate
    );
END;

CREATE TRIGGER tg_hist_est
BEFORE UPDATE OR DELETE ON ESTADOS
FOR EACH ROW
BEGIN
    INSERT INTO H_ESTADOS VALUES (
        :old.est_id,
        :old.est_nome,
        :old.est_codigo_uf,
        sysdate
    );
END;

CREATE TRIGGER tg_hist_fun
BEFORE UPDATE OR DELETE ON FUNCIONARIOS
FOR EACH ROW
BEGIN
    INSERT INTO H_FUNCIONARIOS VALUES (
        :old.fun_id,
        :old.fun_matricula,
        :old.fun_primeiro_nome,
        :old.fun_nome_meio,
        :old.fun_ultimo_nome,
        :old.fun_data_nascimento,
        :old.fun_sexo,
        :old.fun_telefone_residencial,
        :old.fun_telefone_movel,
        :old.fun_data_contratacao,
        :old.fun_car_id,
        :old.fun_salario,
        :old.fun_dep_id,
        :old.fun_tur_id,
        :old.fun_end_cep,
        :old.fun_end_logradouro,
        :old.fun_end_numero,
        :old.fun_end_complemento,
        :old.fun_end_bairro,
        :old.fun_cid_id,
        sysdate
    );
END;

CREATE TRIGGER tg_hist_tur
BEFORE UPDATE OR DELETE ON TURNOS
FOR EACH ROW
BEGIN
    INSERT INTO H_TURNOS VALUES (
        :old.tur_id,
        :old.tur_hora_entrada,
        :old.tur_hora_saida,
        :old.tur_almoco,
        :old.tur_dom,
        :old.tur_seg,
        :old.tur_ter,
        :old.tur_qua,
        :old.tur_qui,
        :old.tur_sex,
        :old.tur_sab,
        sysdate
    );
END;