-- Apontamentos

COMMENT ON TABLE APONTAMENTOS IS 'Esta tabela armazena os dados de apontamentos dos funcionários';
COMMENT ON COLUMN APONTAMENTOS.apo_id IS 'Esta coluna é a PK da tabela APONTAMENTOS';
COMMENT ON COLUMN APONTAMENTOS.apo_entrada IS 'Esta coluna armazena o horário de entrada do funcionário';
COMMENT ON COLUMN APONTAMENTOS.apo_almoco IS 'Esta coluna armazena o horário de saída para o almoço do funcionário';
COMMENT ON COLUMN APONTAMENTOS.apo_volta IS 'Esta coluna armazena o horário de retorno do o almoço do funcionário';
COMMENT ON COLUMN APONTAMENTOS.apo_saida IS 'Esta coluna armazena o horário de saída do funcionário';
COMMENT ON COLUMN APONTAMENTOS.apo_fun_id IS 'Esta coluna é a FK que referencia a tabela FUNCIONARIOS';

-- Banco de Horas

COMMENT ON TABLE BANCO_HORAS IS 'Esta tabela armazena os dados de banco de horas dos funcionários';
COMMENT ON COLUMN BANCO_HORAS.ban_id IS 'Esta coluna é a PK da tabela BANCO_HORAS';
COMMENT ON COLUMN BANCO_HORAS.ban_mes IS 'Esta coluna armazena o mês referente ao banco de horas do funcionário';
COMMENT ON COLUMN BANCO_HORAS.ban_horas_extras IS 'Esta coluna armazena a quantidade de horas extras do banco de horas mensal relacionadas ao funcionário';
COMMENT ON COLUMN BANCO_HORAS.ban_fun_id IS 'Esta coluna é a FK que referencia a tabela FUNCIONARIOS';

-- Cargos

COMMENT ON TABLE CARGOS IS 'Esta tabela armazena os dados de cargos dos funcionários';
COMMENT ON COLUMN CARGOS.car_id IS 'Esta coluna é a PK da tabela CARGOS';
COMMENT ON COLUMN CARGOS.car_descricao IS 'Esta coluna armazena a descrição/nome do cargo';

-- Cidades

COMMENT ON TABLE CIDADES IS 'Esta tabela armazena os dados das cidades dos endereços dos funcionários';
COMMENT ON COLUMN CIDADES.cid_id IS 'Esta coluna é a PK da tabela CIDADES';
COMMENT ON COLUMN CIDADES.cid_nome IS 'Esta coluna armazena o nome da cidade';
COMMENT ON COLUMN CIDADES.cid_codigo IS 'Esta coluna armazena o código da cidade';
COMMENT ON COLUMN CIDADES.cid_est_id IS 'Esta coluna é a FK que referencia a tabela ESTADOS';

-- Departamentos

COMMENT ON TABLE DEPARTAMENTOS IS 'Esta tabela armazena os dados de departamentos da empresa';
COMMENT ON COLUMN DEPARTAMENTOS.dep_id IS 'Esta coluna é a PK da tabela DEPARTAMENTOS';
COMMENT ON COLUMN DEPARTAMENTOS.dep_descricao IS 'Esta coluna armazena a descrição/nome do departamento';

-- Estados

COMMENT ON TABLE ESTADOS IS 'Esta tabela armazena os dados dos estados dos endereços dos funcionários';
COMMENT ON COLUMN ESTADOS.est_id IS 'Esta coluna é a PK da tabela ESTADOS';
COMMENT ON COLUMN ESTADOS.est_nome IS 'Esta coluna armazena o nome do estado';
COMMENT ON COLUMN ESTADOS.est_codigo_uf IS 'Esta coluna armazena o código UF do estado';

-- Funcionários

COMMENT ON TABLE FUNCIONARIOS IS 'Esta tabela armazena os dados de identificação dos funcionários';
COMMENT ON COLUMN FUNCIONARIOS.fun_id IS 'Esta coluna é a PK da tabela FUNCIONARIOS';
COMMENT ON COLUMN FUNCIONARIOS.fun_matricula IS 'Esta coluna armazena a matrícula do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_primeiro_nome IS 'Esta coluna armazena o primeiro nome do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_nome_meio IS 'Esta coluna armazena o nome do meio do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_ultimo_nome IS 'Esta coluna armazena o último nome do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_data_nascimento IS 'Esta coluna armazena a data de nascimento do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_sexo IS 'Esta coluna armazena o sexo do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_telefone_residencial IS 'Esta coluna armazena o telefone residencial do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_telefone_movel IS 'Esta coluna armazena o telefone móvel do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_data_contratacao IS 'Esta coluna armazena a data de quando o funcionário foi contratado';
COMMENT ON COLUMN FUNCIONARIOS.fun_car_id IS 'Esta coluna é a FK que referencia a tabela CARGOS';
COMMENT ON COLUMN FUNCIONARIOS.fun_salario IS 'Esta coluna armazena o salário do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_dep_id IS 'Esta coluna é a FK que referencia a tabela DEPARTAMENTOS';
COMMENT ON COLUMN FUNCIONARIOS.fun_tur_id IS 'Esta coluna é a FK que referencia a tabela TURNOS';
COMMENT ON COLUMN FUNCIONARIOS.fun_end_cep IS 'Esta coluna armazena o cep do endereço do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_end_logradouro IS 'Esta coluna armazena o logradouro do endereço do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_end_numero IS 'Esta coluna armazena o número do endereço do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_end_complemento IS 'Esta coluna armazena o complemento do endereço do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_end_bairro IS 'Esta coluna armazena o bairro do endereço do funcionário';
COMMENT ON COLUMN FUNCIONARIOS.fun_cid_id IS 'Esta coluna é a FK que referencia a tabela CIDADES';

-- Turnos

COMMENT ON TABLE TURNOS IS 'Esta tabela armazena os dados dos turnos/escalas de trabalho dos funcionários';
COMMENT ON COLUMN TURNOS.tur_id IS 'Esta coluna é a PK na tabela TURNOS';
COMMENT ON COLUMN TURNOS.tur_hora_entrada IS 'Esta coluna armazena a hora de entrada do turno';
COMMENT ON COLUMN TURNOS.tur_hora_saida IS 'Esta coluna armazena a hora de saída do turno';
COMMENT ON COLUMN TURNOS.tur_almoco IS 'Esta coluna armazena a quantidade de tempo em horas de almoço permitidos no turno';
COMMENT ON COLUMN TURNOS.tur_dom IS 'Esta coluna é uma flag que armazena se o turno inclui domingo';
COMMENT ON COLUMN TURNOS.tur_seg IS 'Esta coluna é uma flag que armazena se o turno inclui segunda';
COMMENT ON COLUMN TURNOS.tur_ter IS 'Esta coluna é uma flag que armazena se o turno inclui terça';
COMMENT ON COLUMN TURNOS.tur_qua IS 'Esta coluna é uma flag que armazena se o turno inclui quarta';
COMMENT ON COLUMN TURNOS.tur_qui IS 'Esta coluna é uma flag que armazena se o turno inclui quinta';
COMMENT ON COLUMN TURNOS.tur_sex IS 'Esta coluna é uma flag que armazena se o turno inclui sexta';
COMMENT ON COLUMN TURNOS.tur_sab IS 'Esta coluna é uma flag que armazena se o turno inclui sábado';