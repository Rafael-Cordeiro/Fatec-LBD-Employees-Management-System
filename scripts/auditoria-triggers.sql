-- APONTAMENTOS

CREATE TRIGGER tg_audit_apo
AFTER INSERT OR UPDATE OR DELETE ON APONTAMENTOS
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        insert_audit(systimestamp,'I','APONTAMENTOS','APP',NULL,NULL,NULL,:new.apo_id,fetch_user());
    END IF;
    IF DELETING THEN
        insert_audit(systimestamp,'D','APONTAMENTOS','APP',NULL,NULL,NULL,:old.apo_id,fetch_user());
    END IF;
    IF UPDATING THEN
        IF (:old.apo_entrada <> :new.apo_entrada) THEN
            insert_audit(systimestamp,'U','CARGOS','APP','APO_ENTRADA',:old.apo_entrada,:new.apo_entrada,:new.apo_id,fetch_user());
        END IF;
        IF ((:old.apo_almoco IS NULL AND :new.apo_almoco IS NOT NULL) OR (:old.apo_almoco IS NOT NULL AND :new.apo_almoco IS NULL) OR (:old.apo_almoco <> :new.apo_almoco)) THEN
            insert_audit(systimestamp,'U','CARGOS','APP','APO_ALMOCO',:old.apo_almoco,:new.apo_almoco,:new.apo_id,fetch_user());
        END IF;
        IF (:old.apo_volta <> :new.apo_volta) THEN
            insert_audit(systimestamp,'U','CARGOS','APP','APO_VOLTA',:old.apo_volta,:new.apo_volta,:new.apo_id,fetch_user());
        END IF;
        IF (:old.apo_saida <> :new.apo_saida) THEN
            insert_audit(systimestamp,'U','CARGOS','APP','APO_SAIDA',:old.apo_saida,:new.apo_saida,:new.apo_id,fetch_user());
        END IF;
        IF (:old.apo_fun_id <> :new.apo_fun_id) THEN
            insert_audit(systimestamp,'U','CARGOS','APP','APO_FUN_ID',:old.apo_fun_id,:new.apo_fun_id,:new.apo_id,fetch_user());
        END IF;
    END IF;
END;
/

-- BANCOS

CREATE TRIGGER tg_audit_ban
AFTER INSERT OR UPDATE OR DELETE ON BANCO_HORAS
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        insert_audit(systimestamp,'I','BANCO_HORAS','APP',NULL,NULL,NULL,:new.ban_id,fetch_user());
    END IF;
    IF DELETING THEN
        insert_audit(systimestamp,'D','BANCO_HORAS','APP',NULL,NULL,NULL,:old.ban_id,fetch_user());
    END IF;
    IF UPDATING THEN
        IF (:old.ban_mes <> :new.ban_mes) THEN
            insert_audit(systimestamp,'U','BANCO_HORAS','APP','BAN_MES',:old.ban_mes,:new.ban_mes,:new.ban_id,fetch_user());
        END IF;
        IF (:old.ban_horas_extras <> :new.ban_horas_extras) THEN
            insert_audit(systimestamp,'U','BANCO_HORAS','APP','BAN_HORAS_EXTRAS',:old.ban_horas_extras,:new.ban_horas_extras,:new.ban_id,fetch_user());
        END IF;
        IF (:old.ban_fun_id <> :new.ban_fun_id) THEN
            insert_audit(systimestamp,'U','BANCO_HORAS','APP','BAN_FUN_ID',:old.ban_fun_id,:new.ban_fun_id,:new.ban_id,fetch_user());
        END IF;
    END IF;
END;
/

-- CARGOS

CREATE TRIGGER tg_audit_car
AFTER INSERT OR UPDATE OR DELETE ON CARGOS
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        insert_audit(systimestamp,'I','CARGOS','APP',NULL,NULL,NULL,:new.car_id,fetch_user());
    END IF;
    IF DELETING THEN
        insert_audit(systimestamp,'D','CARGOS','APP',NULL,NULL,NULL,:old.car_id,fetch_user());
    END IF;
    IF UPDATING THEN
        IF (:old.car_descricao <> :new.car_descricao) THEN
            insert_audit(systimestamp,'U','CARGOS','APP','CAR_DESCRICAO',:old.car_descricao,:new.car_descricao,:new.car_id,fetch_user());
        END IF;
    END IF;
END;
/

-- CIDADES

CREATE TRIGGER tg_audit_cid
AFTER INSERT OR UPDATE OR DELETE ON CIDADES
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        insert_audit(systimestamp,'I','CIDADES','APP',NULL,NULL,NULL,:new.cid_id,fetch_user());
    END IF;
    IF DELETING THEN
        insert_audit(systimestamp,'D','CIDADES','APP',NULL,NULL,NULL,:old.cid_id,fetch_user());
    END IF;
    IF UPDATING THEN
    IF (:old.cid_nome <> :new.cid_nome) THEN
            insert_audit(systimestamp,'U','CIDADES','APP','CID_NOME',:old.cid_nome,:new.cid_nome,:new.cid_id,fetch_user());
        END IF;
        IF (:old.cid_codigo <> :new.cid_codigo) THEN
            insert_audit(systimestamp,'U','CIDADES','APP','CID_CODIGO',:old.cid_codigo,:new.cid_codigo,:new.cid_id,fetch_user());
        END IF;
         IF (:old.cid_est_id <> :new.cid_est_id) THEN
            insert_audit(systimestamp,'U','CIDADES','APP','CID_EST_ID',:old.cid_est_id,:new.cid_est_id,:new.cid_id,fetch_user());
        END IF;
     END IF;
END;
/

-- DEPARTAMENTOS

CREATE TRIGGER tg_audit_dep
AFTER INSERT OR UPDATE OR DELETE ON DEPARTAMENTOS
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        insert_audit(SYSTIMESTAMP,'I','DEPARTAMENTOS','APP',NULL,NULL,NULL,:new.dep_id,fetch_user());
    END IF;
    IF DELETING THEN
        insert_audit(SYSTIMESTAMP,'D','DEPARTAMENTOS','APP',NULL,NULL,NULL,:old.dep_id,fetch_user());
    END IF;
    IF UPDATING THEN
        IF (:old.dep_descricao <> :new.dep_descricao) THEN
            insert_audit(SYSTIMESTAMP,'U','DEPARTAMENTOS','APP','DEP_DESCRICAO',:old.dep_descricao,:new.dep_descricao,:new.dep_id,fetch_user());
        END IF;
    END IF;
END;
/

-- ESTADOS

CREATE TRIGGER tg_audit_est
AFTER INSERT OR UPDATE OR DELETE ON ESTADO
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        insert_audit(systimestamp,'I','ESTADO','APP',NULL,NULL,NULL,:new.est_id,fetch_user());
    END IF;
    IF DELETING THEN
        insert_audit(systimestamp,'D','ESTADO','APP',NULL,NULL,NULL,:old.est_id,fetch_user());
    END IF;
    IF UPDATING THEN
    IF (:old.est_nome <> :new.est_nome) THEN
            insert_audit(systimestamp,'U','ESTADO','APP','EST_NOME',:old.cid_nome,:new.cid_nome,:new.est_id,fetch_user());
        END IF;
        IF (:old.est_codigo_uf <> :new.est_codigo_uf) THEN
            insert_audit(systimestamp,'U','ESTADO','APP','EST_CODIGO_UF',:old.est_codigo_uf,:new.est_codigo_uf,:new.est_id,fetch_user());
        END IF;
     END IF;
END;
/

-- FUNCIONARIOS

CREATE TRIGGER tg_audit_fun
AFTER INSERT OR UPDATE OR DELETE ON FUNCIONARIOS
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        insert_audit(SYSTIMESTAMP,'I','FUNCIONARIOS','APP',NULL,NULL,NULL,:new.fun_id,fetch_user());
    END IF;
    IF DELETING THEN
        insert_audit(SYSTIMESTAMP,'D','FUNCIONARIOS','APP',NULL,NULL,NULL,:old.fun_id,fetch_user());
    END IF;
    IF UPDATING THEN
        IF (:old.fun_matricula <> :new.fun_matricula) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_MATRICULA',:old.fun_matricula,:new.fun_matricula,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_primeiro_nome <> :new.fun_primeiro_nome) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_PRIMEIRO_NOME',:old.fun_primeiro_nome,:new.fun_primeiro_nome,:new.fun_id,fetch_user());
        END IF;
        IF ((:old.fun_nome_meio IS NULL and :new.fun_nome_meio IS NOT NULL) OR (:old.fun_nome_meio IS NOT NULL and :new.fun_nome_meio IS NULL) OR (:old.fun_nome_meio <> :new.fun_nome_meio)) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_NOME_MEIO',:old.fun_nome_meio,:new.fun_nome_meio,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_ultimo_nome <> :new.fun_ultimo_nome) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_ULTIMO_NOME',:old.fun_ultimo_nome,:new.fun_ultimo_nome,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_data_nascimento <> :new.fun_data_nascimento) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_DATA_NASCIMENTO',:old.fun_data_nascimento,:new.fun_data_nascimento,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_sexo <> :new.fun_sexo) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_SEXO',:old.fun_sexo,:new.fun_sexo,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_telefone_residencial <> :new.fun_telefone_residencial) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_TELEFONE_RESIDENCIAL',:old.fun_telefone_residencial,:new.fun_telefone_residencial,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_telefone_movel <> :new.fun_telefone_movel) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_TELEFONE_MOVEL',:old.fun_telefone_movel,:new.fun_telefone_movel,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_data_contratacao <> :new.fun_data_contratacao) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_DATA_CONTRATACAO',:old.fun_data_contratacao,:new.fun_data_contratacao),:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_car_id <> :new.fun_car_id) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_CAR_ID',:old.fun_car_id,:new.fun_car_id,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_salario <> :new.fun_salario) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_SALARIO',:old.fun_salario,:new.fun_salario,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_dep_id <> :new.fun_dep_id) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_DEP_ID',:old.fun_dep_id,:new.fun_dep_id,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_tur_id <> :new.fun_tur_id) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_TUR_ID',:old.fun_tur_id,:new.fun_tur_id,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_end_cep <> :new.fun_end_cep) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_END_CEP',:old.fun_end_cep,:new.fun_end_cep,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_end_logradouro <> :new.fun_end_logradouro) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_END_LOGRADOURO',:old.fun_end_logradouro,:new.fun_end_logradouro,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_end_numero <> :new.fun_end_numero) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_END_NUMERO',:old.fun_end_numero,:new.fun_end_numero,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_end_complemento <> :new.fun_end_complemento) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','FUN_END_COMPLEMENTO',:old.fun_end_complemento,:new.fun_end_complemento,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_end_bairro <> :new.fun_end_bairro) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','fun_end_bairro',:old.fun_end_bairro,:new.fun_end_bairro,:new.fun_id,fetch_user());
        END IF;
        IF (:old.fun_cid_id <> :new.fun_cid_id) THEN
            insert_audit(SYSTIMESTAMP,'U','FUNCIONARIOS','APP','fun_cid_id',:old.fun_cid_id,:new.fun_cid_id,:new.fun_id,fetch_user());
        END IF;
    END IF;
END;
/

-- TURNOS

CREATE TRIGGER tg_audit_tur
AFTER INSERT OR UPDATE OR DELETE ON TURNOS
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        insert_audit(systimestamp,'I','TURNOS','APP',NULL,NULL,NULL,:new.tur_id,fetch_user());
    END IF;
    IF DELETING THEN
        insert_audit(systimestamp,'D','TURNOS','APP',NULL,NULL,NULL,:old.tur_id,fetch_user());
    END IF;
    IF UPDATING THEN
        IF (:old.tur_hora_entrada <> :new.tur_hora_entrada) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_HORA_ENTRADA',:old.tur_hora_entrada,:new.tur_hora_entrada,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_hora_saida <> :new.tur_hora_saida) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_HORA_SAIDA',:old.tur_hora_saida,:new.tur_hora_saida,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_almoco <> :new.tur_almoco) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_ALMOCO',:old.tur_almoco,:new.tur_almoco,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_dom <> :new.tur_dom) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_DOM',:old.tur_dom,:new.tur_dom,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_seg <> :new.tur_seg) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_SEG',:old.tur_seg,:new.tur_seg,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_ter <> :new.tur_ter) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_TER',:old.tur_ter,:new.tur_ter,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_qua <> :new.tur_qua) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_QUA',:old.tur_qua,:new.tur_qua,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_qui <> :new.tur_qui) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_QUI',:old.tur_qui,:new.tur_qui,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_sex <> :new.tur_sex) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_SEX',:old.tur_sex,:new.tur_sex,:new.tur_id,fetch_user());
        END IF;
        IF (:old.tur_sab <> :new.tur_sab) THEN
            insert_audit(systimestamp,'U','TURNOS','APP','TUR_SAB',:old.tur_sab,:new.tur_sab,:new.tur_id,fetch_user());
        END IF;
   END IF;
END;
/