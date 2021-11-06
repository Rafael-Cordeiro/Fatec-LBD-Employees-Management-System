insert into TURNOS 
(tur_hora_entrada, tur_hora_saida, tur_almoco, tur_dom, tur_seg, tur_ter, tur_qua, tur_qui, tur_sex, tur_sab) 
values (TO_DATE('08:00','hh24:mi'), TO_DATE('18:00','hh24:mi'), 1, 'N', 'S', 'S', 'S', 'S', 'S', 'N');

insert into TURNOS 
(tur_hora_entrada, tur_hora_saida, tur_almoco, tur_dom, tur_seg, tur_ter, tur_qua, tur_qui, tur_sex, tur_sab) 
values (TO_DATE('10:00','hh24:mi'), TO_DATE('17:00','hh24:mi'), .5, 'N', 'S', 'S', 'S', 'S', 'S', 'S');