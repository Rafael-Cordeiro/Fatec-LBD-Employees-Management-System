-- Apontamentos

CREATE SEQUENCE seq_apo NOCACHE;

CREATE TRIGGER tg_seq_apo
BEFORE INSERT ON APONTAMENTOS
FOR EACH ROW
BEGIN
    :new.apo_id := seq_apo.nextval;
END;

-- Banco de Horas

CREATE SEQUENCE seq_ban NOCACHE;

CREATE TRIGGER tg_seq_ban
BEFORE INSERT ON BANCO_HORAS
FOR EACH ROW
BEGIN
    :new.ban_id := seq_ban.nextval;
END;

-- Cargos

CREATE SEQUENCE seq_car NOCACHE;

CREATE TRIGGER tg_seq_car
BEFORE INSERT ON CARGOS
FOR EACH ROW
BEGIN
    :new.car_id := seq_car.nextval;
END;

-- Cidade

CREATE SEQUENCE seq_cid NOCACHE;

CREATE TRIGGER tg_seq_cid
BEFORE INSERT ON CIDADES
FOR EACH ROW
BEGIN
    :new.cid_id := seq_cid.nextval;
END;

-- Departamentos

CREATE SEQUENCE seq_dep NOCACHE;

CREATE TRIGGER tg_seq_dep
BEFORE INSERT ON DEPARTAMENTOS
FOR EACH ROW
BEGIN
    :new.dep_id := seq_dep.nextval;
END;

-- Estados

CREATE SEQUENCE seq_est NOCACHE;

CREATE TRIGGER tg_seq_est
BEFORE INSERT ON ESTADOS
FOR EACH ROW
BEGIN
    :new.est_id := seq_est.nextval;
END;

-- Funcionários

CREATE SEQUENCE seq_fun NOCACHE;

CREATE TRIGGER tg_seq_fun
BEFORE INSERT ON FUNCIONARIOS
FOR EACH ROW
BEGIN
    :new.fun_id := seq_est.nextval;
END;

-- Turnos

CREATE SEQUENCE seq_tur NOCACHE;

CREATE TRIGGER tg_seq_tur
BEFORE INSERT ON TURNOS
FOR EACH ROW
BEGIN
    :new.tur_id := seq_tur.nextval;
END;