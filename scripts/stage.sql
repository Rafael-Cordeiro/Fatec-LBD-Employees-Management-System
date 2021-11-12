CREATE TABLE STAGE (
    stg_num_funcionario           NUMBER(6),
    stg_matricula                 VARCHAR(255),
    stg_nome                      VARCHAR(255),
    stg_contratacao               DATE,
    stg_anos_empresa              NUMBER(2),
    stg_departamento              VARCHAR(255),
    stg_cargo                     VARCHAR(255),
    stg_salario                   NUMBER(8,2),
    stg_quantidade_cargos         NUMBER(2),
    stg_funcionarios_departamento NUMBER(4),
    stg_funcionarios_cargos         NUMBER(4),
    stg_cidade                    VARCHAR(255),
    stg_estado                    VARCHAR(255)
);

-- f1  = FUNCIONARIOS
-- d1  = DEPARTAMENTOS
-- ca1 = CARGOS
-- hf1 = H_FUNCIONARIOS
-- ci1 = CIDADES
-- e1  = ESTADOS

SELECT
    f1.fun_id,
    f1.fun_matricula,
    f1.fun_primeiro_nome || ' ' || f1.fun_nome_meio || ' ' || f1.fun_ultimo_nome,
    f1.fun_data_contratacao,
    TRUNC(months_between(SYSDATE,f1.fun_data_contratacao)/12),
    d1.dep_descricao,
    ca1.car_descricao,
    f1.fun_salario,
    (SELECT COUNT(DISTINCT hf1.hfun_car_id) FROM H_FUNCIONARIOS AS hf1 WHERE hf1.hfun_id = f1.fun_id),
    (SELECT COUNT(*) FROM FUNCIONARIOS AS f2 WHERE f2.fun_dep_id = f1.fun_dep_id),
    (SELECT COUNT(*) FROM FUNCIONARIOS AS f2 WHERE f2.fun_car_id = f1.fun_car_id),
    ci1.cid_nome,
    e1.est_nome
FROM
    FUNCIONARIOS AS f1,
    LEFT JOIN DEPARTAMENTOS AS d1 ON d1.dep_id = f1.fun_dep_id
    LEFT JOIN CARGOS AS c1 ON ca1.car_id = f1.fun_car_id
    LEFT JOIN CIDADES AS ci1 ON ci1.cid_id = f1.fun_cid_id
    LEFT JOIN ESTADOS AS e1 ON e1.est_id = ci1.cid_est_id;

CREATE PROCEDURE proc_stage AS 
BEGIN
    DELETE STAGE;
    INSERT INTO STAGE
    SELECT
        f1.fun_id,
        f1.fun_matricula,
        f1.fun_primeiro_nome || ' ' || f1.fun_nome_meio || ' ' || f1.fun_ultimo_nome,
        f1.fun_data_contratacao,
        TRUNC(months_between(SYSDATE,f1.fun_data_contratacao)/12),
        d1.dep_descricao,
        ca1.car_descricao,
        f1.fun_salario,
        (SELECT COUNT(DISTINCT hf1.hfun_car_id) FROM H_FUNCIONARIOS AS hf1 WHERE hf1.hfun_id = f1.fun_id),
        (SELECT COUNT(*) FROM FUNCIONARIOS AS f2 WHERE f2.fun_dep_id = f1.fun_dep_id),
        (SELECT COUNT(*) FROM FUNCIONARIOS AS f2 WHERE f2.fun_car_id = f1.fun_car_id),
        ci1.cid_nome,
        e1.est_nome
    FROM
        FUNCIONARIOS AS f1,
        LEFT JOIN DEPARTAMENTOS AS d1 ON d1.dep_id = f1.fun_dep_id
        LEFT JOIN CARGOS AS c1 ON ca1.car_id = f1.fun_car_id
        LEFT JOIN CIDADES AS ci1 ON ci1.cid_id = f1.fun_cid_id
        LEFT JOIN ESTADOS AS e1 ON e1.est_id = ci1.cid_est_id;
END;
/