-- CREATE TABLE E ADD CONSTRAINT PK


-- Apontamentos

CREATE TABLE APONTAMENTOS (
    apo_id       NUMBER(6) NOT NULL,
    apo_entrada  TIMESTAMP NOT NULL,
    apo_almoco   TIMESTAMP NOT NULL,
    apo_volta    TIMESTAMP NOT NULL,
    apo_saida    TIMESTAMP NOT NULL,
    apo_fun_id   NUMBER(6) NOT NULL
);

ALTER TABLE APONTAMENTOS ADD CONSTRAINT PK_APO PRIMARY KEY ( apo_id );

-- Banco de Horas

CREATE TABLE BANCO_HORAS (
    ban_id            NUMBER(6) NOT NULL,
    ban_mes           DATE NOT NULL,
    ban_horas_extras  NUMBER(5,2) NOT NULL,
    ban_fun_id        NUMBER(6) NOT NULL
);

ALTER TABLE BANCO_HORAS ADD CONSTRAINT PK_BAN PRIMARY KEY ( ban_id );

-- Cargos

CREATE TABLE CARGOS (
    car_id         NUMBER(6) NOT NULL,
    car_descricao  VARCHAR2(255) NOT NULL
);

ALTER TABLE CARGOS ADD CONSTRAINT PK_CAR PRIMARY KEY ( car_id );

-- Cidades

CREATE TABLE CIDADES (
    cid_id      NUMBER(6) NOT NULL,
    cid_nome    VARCHAR2(255) NOT NULL,
    cid_codigo  VARCHAR2(255) NOT NULL,
    cid_est_id  NUMBER(6) NOT NULL
);

ALTER TABLE CIDADES ADD CONSTRAINT PK_CID PRIMARY KEY ( cid_id );

-- Departamentos

CREATE TABLE DEPARTAMENTOS (
    dep_id         NUMBER(6) NOT NULL,
    dep_descricao  VARCHAR2(255) NOT NULL
);

ALTER TABLE DEPARTAMENTOS ADD CONSTRAINT PK_DEP PRIMARY KEY ( dep_id );

-- Estados

CREATE TABLE ESTADOS (
    est_id         NUMBER(6) NOT NULL,
    est_nome       VARCHAR2(255) NOT NULL,
    est_codigo_uf  CHAR(2) NOT NULL
);

ALTER TABLE ESTADOS ADD CONSTRAINT PK_EST PRIMARY KEY ( est_id );

-- Funcionários

CREATE TABLE FUNCIONARIOS (
    fun_id                    NUMBER(6) NOT NULL,
    fun_matricula             VARCHAR2(255) NOT NULL,
    fun_primeiro_nome         VARCHAR2(15) NOT NULL,
    fun_nome_meio             VARCHAR2(30),
    fun_ultimo_nome           VARCHAR2(15) NOT NULL,
    fun_data_nascimento       DATE NOT NULL,
    fun_sexo                  CHAR(1),
    fun_telefone_residencial  VARCHAR2(255) NOT NULL,
    fun_telefone_movel        VARCHAR2(255) NOT NULL,
    fun_data_contratacao      DATE NOT NULL,
    fun_car_id                NUMBER(6) NOT NULL,
    fun_salario               VARCHAR2(255) NOT NULL,
    fun_dep_id                NUMBER(6) NOT NULL,
    fun_tur_id                NUMBER(6) NOT NULL,
    fun_end_cep               VARCHAR2(255) NOT NULL,
    fun_end_logradouro        VARCHAR2(255) NOT NULL,
    fun_end_numero            VARCHAR2(255) NOT NULL,
    fun_end_complemento       VARCHAR2(255) NOT NULL,
    fun_end_bairro            VARCHAR2(255) NOT NULL,
    fun_cid_id                NUMBER(6) NOT NULL
);

ALTER TABLE FUNCIONARIOS ADD CONSTRAINT PK_FUN PRIMARY KEY ( fun_id );

ALTER TABLE TURNOS ADD CONSTRAINT CK_FUN_01 CHECK (fun_sexo IN ('M','F'));

-- Turnos

CREATE TABLE TURNOS ( 
    tur_id            NUMBER(6) NOT NULL,
    tur_hora_entrada  DATE NOT NULL,
    tur_hora_saida    DATE NOT NULL,
    tur_almoco        NUMBER(5, 2) NOT NULL,
    tur_dom           CHAR(1) NOT NULL,
    tur_seg           CHAR(1) NOT NULL,
    tur_ter           CHAR(1) NOT NULL,
    tur_qua           CHAR(1) NOT NULL,
    tur_qui           CHAR(1) NOT NULL,
    tur_sex           CHAR(1) NOT NULL,
    tur_sab           CHAR(1) NOT NULL
);

ALTER TABLE TURNOS ADD CONSTRAINT PK_TUR PRIMARY KEY ( tur_id );

ALTER TABLE TURNOS ADD CONSTRAINT CK_TUR_01 CHECK (tur_dom IN ('S','N'));
ALTER TABLE TURNOS ADD CONSTRAINT CK_TUR_02 CHECK (tur_seg IN ('S','N'));
ALTER TABLE TURNOS ADD CONSTRAINT CK_TUR_03 CHECK (tur_ter IN ('S','N'));
ALTER TABLE TURNOS ADD CONSTRAINT CK_TUR_04 CHECK (tur_qua IN ('S','N'));
ALTER TABLE TURNOS ADD CONSTRAINT CK_TUR_05 CHECK (tur_qui IN ('S','N'));
ALTER TABLE TURNOS ADD CONSTRAINT CK_TUR_06 CHECK (tur_sex IN ('S','N'));
ALTER TABLE TURNOS ADD CONSTRAINT CK_TUR_07 CHECK (tur_sab IN ('S','N'));

-- ADD CONSTRAINT FK


ALTER TABLE APONTAMENTOS
    ADD CONSTRAINT FK_APO_FUN FOREIGN KEY ( apo_fun_id )
        REFERENCES FUNCIONARIOS ( fun_id );

ALTER TABLE BANCO_HORAS
    ADD CONSTRAINT FK_BAN_FUN FOREIGN KEY ( ban_fun_id )
        REFERENCES FUNCIONARIOS ( fun_id );

ALTER TABLE CIDADES
    ADD CONSTRAINT FK_CID_EST FOREIGN KEY ( cid_est_id )
        REFERENCES ESTADOS ( est_id );

ALTER TABLE FUNCIONARIOS
    ADD CONSTRAINT FK_FUN_CAR FOREIGN KEY ( fun_car_id )
        REFERENCES CARGOS ( car_id );

ALTER TABLE FUNCIONARIOS
    ADD CONSTRAINT FK_FUN_CID FOREIGN KEY ( fun_cid_id )
        REFERENCES CIDADES ( cid_id );

ALTER TABLE FUNCIONARIOS
    ADD CONSTRAINT FK_FUN_DEP FOREIGN KEY ( fun_dep_id )
        REFERENCES DEPARTAMENTOS ( dep_id );

ALTER TABLE FUNCIONARIOS
    ADD CONSTRAINT FK_FUN_TUR FOREIGN KEY ( fun_tur_id )
        REFERENCES TURNOS ( tur_id );
