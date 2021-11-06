-- CRIAÇÃO TABELA DE AUDITORIA

CREATE TABLE AUDIT_TABLE (
    aud_id            NUMBER(10),
    aud_dt_hora       TIMESTAMP,
    aud_evento        CHAR(1),
    aud_tabela        VARCHAR(30),
    aud_owner         VARCHAR(30),
    aud_coluna        VARCHAR(30),
    aud_old           VARCHAR(255),
    aud_new           VARCHAR(255),
    aud_identificador VARCHAR(50),
    aud_bduser        VARCHAR(30)
);

-- CONSTRAINTS DOS CAMPOS

ALTER TABLE AUDIT_TABLE ADD CONSTRAINT PK_AUD PRIMARY KEY (aud_id);
ALTER TABLE AUDIT_TABLE ADD CONSTRAINT CK_AUD_01 CHECK (aud_evento IN ('I','U','D'));
ALTER TABLE AUDIT_TABLE ADD CONSTRAINT NN_AUD_01 CHECK (aud_dt_hora IS NOT NULL);
ALTER TABLE AUDIT_TABLE ADD CONSTRAINT NN_AUD_02 CHECK (aud_evento IS NOT NULL);
ALTER TABLE AUDIT_TABLE ADD CONSTRAINT NN_AUD_03 CHECK (aud_tabela IS NOT NULL);
ALTER TABLE AUDIT_TABLE ADD CONSTRAINT NN_AUD_04 CHECK (aud_owner IS NOT NULL);
ALTER TABLE AUDIT_TABLE ADD CONSTRAINT NN_AUD_05 CHECK (aud_identificador IS NOT NULL);
ALTER TABLE AUDIT_TABLE ADD CONSTRAINT NN_AUD_06 CHECK (aud_bduser IS NOT NULL);

-- SEQ

CREATE SEQUENCE seq_aud NOCACHE;

-- TRIGGER SEQ

CREATE TRIGGER tg_seq_aud
BEFORE INSERT ON AUDIT_TABLE
FOR EACH ROW
BEGIN
   :new.aud_id := seq_aud.nextval;
END;
/

-- PROCEDURE DE INSERÇÃO NA AUDIT_TABLE

CREATE PROCEDURE insert_audit (
    p_aud_dt_hora       TIMESTAMP,
    p_aud_evento        CHAR,
    p_aud_tabela        VARCHAR,
    p_aud_owner         VARCHAR,
    p_aud_coluna        VARCHAR,
    p_aud_old           VARCHAR,
    p_aud_new           VARCHAR,
    p_aud_identificador VARCHAR,
    p_aud_bduser        VARCHAR
)
IS 
BEGIN
    INSERT INTO audit_table 
    VALUES (
        0,
        p_aud_dt_hora,
        p_aud_evento,
        p_aud_tabela,
        p_aud_owner,
        p_aud_coluna,
        p_aud_old,
        p_aud_new,
        p_aud_identificador,
        p_aud_bduser
    );
END;

-- RETORNA USUÁRIO LOGADO

CREATE FUNCTION fetch_user RETURN VARCHAR AS
   v_user VARCHAR(30);
BEGIN
   SELECT user INTO v_user FROM dual;
   RETURN v_user;
END;