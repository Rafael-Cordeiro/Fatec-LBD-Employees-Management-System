-- Histórico Apontamentos

COMMENT ON TABLE H_APONTAMENTOS IS 'Esta tabela armazena os dados de H_apontamentos dos funcionários';
COMMENT ON COLUMN H_APONTAMENTOS.hapo_id IS 'Esta coluna compôe a PK da tabela H_APONTAMENTOS';
COMMENT ON COLUMN H_APONTAMENTOS.hapo_dia IS 'Esta coluna armazena o dia do apontamento';
COMMENT ON COLUMN H_APONTAMENTOS.hapo_entrada IS 'Esta coluna armazena o horário de entrada do funcionário';
COMMENT ON COLUMN H_APONTAMENTOS.hapo_almoco IS 'Esta coluna armazena o horário de saída para o almoço do funcionário';
COMMENT ON COLUMN H_APONTAMENTOS.hapo_volta IS 'Esta coluna armazena o horário de retorno do o almoço do funcionário';
COMMENT ON COLUMN H_APONTAMENTOS.hapo_saida IS 'Esta coluna armazena o horário de saída do funcionário';
COMMENT ON COLUMN H_APONTAMENTOS.hapo_dt_entrada IS 'Esta coluna armazena a data da inserção do registro e compôe a PK';