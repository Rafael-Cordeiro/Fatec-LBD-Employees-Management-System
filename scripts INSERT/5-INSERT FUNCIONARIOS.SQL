

------ INSERÇÃO 
----------- MULHER ENTRE 20-30  -- ANOS TRABALHO 0 ENTRE 4 

INSERT INTO FUNCIONARIOS
VALUES  (1, '100003',
            'ANA','LAURA','ALMEIDA',
            to_date('12/03/1995', 'DD/MM/YYYY'),
            'F',
            '49524448',
            '963515965',
            to_date('05/10/2020', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'VENDEDOR'),
            1600.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'COMERCIAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '09510562',
            'AVENIDA SOARES',
            '370',
            '1',
            'BENEDITO RODRIGUES',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'POÁ')
        );

INSERT INTO FUNCIONARIOS
VALUES  (1, '100004',
            'JULIANA','RAFAELA','SIQUEIRA',
            to_date('23/09/1993', 'DD/MM/YYYY'),
            'F',
            '45974448',
            '983515945',
            to_date('06/11/2015', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'VENDEDOR'),
            2000.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'COMERCIAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '09510562',
            ' RUA RODRIGUES',
            '1110',
            '1',
            'MIGUEL BADRA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SUZANO')
        );

INSERT INTO FUNCIONARIOS
VALUES  (1, '100005',
            'MARIA','FERNANDA','SIQUEIRA',
            to_date('14/05/1993', 'DD/MM/YYYY'),
            'F',
            '4681378',
            '983565985',
            to_date('01/12/2017', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'VENDEDOR'),
            2000.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'COMERCIAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '09511000',
            ' RUA SÃO BATISTA',
            '1220',
            '1',
            'BOA VISTA PAULISTA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SUZANO')
        );


INSERT INTO FUNCIONARIOS
VALUES  (1, '100006',
            'LUIZA','GABRIELA','MORAIS',
            to_date('10/04/1991', 'DD/MM/YYYY'),
            'F',
            '4681458',
            '983565985',
            to_date('05/03/2017', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'VENDEDOR'),
            2000.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'COMERCIAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '09511000',
            ' RUA DR.RODOLFO',
            '122',
            '1',
            'MOGI MODERNO',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'MOGI DAS CRUZES')
        );


INSERT INTO FUNCIONARIOS
VALUES  (1, '100006',
            'RENATA','OLIVEIRA','SANTOS',
            to_date('25/02/1985', 'DD/MM/YYYY'),
            'F',
            '4786458',
            '983254985',
            to_date('15/03/2013', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'VENDEDOR'),
            2000.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'COMERCIAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '09511000',
            ' RUA DR.FRANCISCO',
            '722',
            '1',
            'JUNDIAPEBA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'MOGI DAS CRUZES')
        );


INSERT INTO FUNCIONARIOS
VALUES  (1, '100007',
            'AMANDA','LIMA','LINO',
            to_date('20/12/1999', 'DD/MM/YYYY'),
            'F',
            '47867412',
            '983253219',
            to_date('10/02/2018', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA JUNIOR'),
            3050.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '09845850',
            'AVENIDA JUNIOR',
            '539',
            '1',
            'PIRATININGA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'ITAQUAQUECETUBA')
        );

INSERT INTO FUNCIONARIOS
VALUES  (1, '100008',
            'REBECA','KATSU','YAMASU',
            to_date('02/12/1994', 'DD/MM/YYYY'),
            'F',
            '47867556',
            '947843219',
            to_date('29/01/2015', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA PLENO'),
            5200.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0365850',
            'RUA FERREIRA LOPES',
            '100',
            '2',
            'MORUNBI',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );



INSERT INTO FUNCIONARIOS
VALUES  (1, '100009',
            'LUANA','MARIA','ALENCAR',
            to_date('08/11/1993', 'DD/MM/YYYY'),
            'F',
            '38567556',
            '947847119',
            to_date('29/01/2014', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA PLENO'),
            5250.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0333350',
            'RUA DR.MAURICIO ',
            '103',
            '1',
            'BUTANTÃ',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );



INSERT INTO FUNCIONARIOS
VALUES  (1, '100010',
            'YASMIM','NATSUMI','SILVA',
            to_date('22/08/1985', 'DD/MM/YYYY'),
            'F',
            '47862236',
            '999943219',
            to_date('23/03/2011', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA SÊNIOR'),
            7800.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND TUR_SAB = 'S')),
            '0365850',
            'RUA PRESIDENTE PRUDENTE',
            '103',
            '1',
            'RAPOSO TAVARIS',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );
---- SELECTS

-----------------MASCULINO---------------------------

INSERT INTO FUNCIONARIOS
VALUES  (1, '100011',
            'RODRIGO','FERNANDO','SILVA',
            to_date('26/07/1979', 'DD/MM/YYYY'),
            'M',
            '47862236',
            '999943219',
            to_date('13/01/2006', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'CONTADOR'),
            4000.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'FINANCEIRO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0365850',
            'ALAMEDA DOS INFARTADOS',
            '1030',
            '1',
            'ARICANDUVA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );





INSERT INTO FUNCIONARIOS
VALUES  (1, '100012',
            'GEORGE','LUCAS','FLORIANO',
            to_date('26/04/1991', 'DD/MM/YYYY'),
            'M',
            '47862895',
            '944543219',
            to_date('13/10/2016', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA PLENO'),
            5800.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '1165890',
            'RUA BRAGANÇA',
            '130',
            '1',
            'VILA ANDRADE',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );


INSERT INTO FUNCIONARIOS
VALUES  (1, '100013',
            'LUIS','DONIZETI','BERG',
            to_date('06/06/1989', 'DD/MM/YYYY'),
            'M',
            '58786897',
            '94548239',
            to_date('13/10/2016', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA PLENO'),
            5800.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '1165890',
            'RUA LORCA',
            '560',
            '1',
            'TIRADENTES',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );


INSERT INTO FUNCIONARIOS
VALUES  (1, '100014',
            'RAFAEL','HENRIQUE','MARIANO',
            to_date('02/10/1993', 'DD/MM/YYYY'),
            'M',
            '5878597',
            '94511119',
            to_date('19/10/2015', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA PLENO'),
            6000.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '1165890',
            'RUA PEIXOTO',
            '970',
            '1',
            'CARRÃO',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );


INSERT INTO FUNCIONARIOS
VALUES  (1, '100015',
            'ARTHUR','FERNANDES','LORENZO',
            to_date('22/12/1993', 'DD/MM/YYYY'),
            'M',
            '5878597',
            '94511119',
            to_date('19/10/2014', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA SÊNIOR'),
            8200.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '1133390',
            'RUA FARIA LIMA',
            '2970',
            '1',
            'CENTRO',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );

INSERT INTO FUNCIONARIOS
VALUES  (1, '100016',
            'DANILO','RICARDO','MORAIS',
            to_date('24/12/1996', 'DD/MM/YYYY'),
            'M',
            '5879997',
            '35511119',
            to_date('10/10/2020', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ANALISTA TRAINEE'),
            1700.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'DESENVOLVIMENTO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '1133390',
            'RUA SÃO LUIZ',
            '270',
            '1',
            'LIBERADE',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );


------ ESTAGIARIOS -----

INSERT INTO FUNCIONARIOS
VALUES  (1, '100017',
            'EMANUEL','FELIPE','YAMAMOTO',
            to_date('01/11/2000', 'DD/MM/YYYY'),
            'M',
            '5879997',
            '35511119',
            to_date('28/01/2021', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ESTAGIÁRIO'),
            1100.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'TI'),
            (SELECT TUR_ID 
            FROM TURNOS 
            WHERE (TUR_HORA_SAIDA = to_date('01/01/2021 15:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND TUR_SAB = 'N')),
            '1133390',
            'RUA SÃO PEDRO',
            '270',
            '1',
            'LIBERADE',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SÃO PAULO')
        );



INSERT INTO FUNCIONARIOS
VALUES  (1, '100018',
            'SILVIO','LOURENÇO','LORCA',
            to_date('09/07/2000', 'DD/MM/YYYY'),
            'M',
            '5458197',
            '35556819',
            to_date('03/02/2021', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ESTAGIÁRIO'),
            800.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'ADMINISTRAÇÃO'),
            (SELECT TUR_ID 
            FROM TURNOS 
            WHERE (TUR_HORA_SAIDA = to_date('01/01/2021 15:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND TUR_SAB = 'N')),
            '1133390',
            'ALAMEDA FRASCISCANO',
            '277',
            '1',
            'NOVA BIRITIBA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'BIRITIBA MIRIM')
        );

INSERT INTO FUNCIONARIOS
VALUES  (1, '100019',
            'ANA','BEATRIZ','RODRIGUES',
            to_date('15/03/2001', 'DD/MM/YYYY'),
            'F',
            '5458199',
            '35635419',
            to_date('01/07/2021', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ESTAGIÁRIO'),
            800.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'ADMINISTRAÇÃO'),
            (SELECT TUR_ID 
            FROM TURNOS 
            WHERE (TUR_HORA_SAIDA = to_date('01/01/2021 15:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND TUR_SAB = 'N')),
            '1133390',
            'AVENIDA NASCIMENTO',
            '874',
            '1',
            'PEROVA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'ARUJÁ')
        );



INSERT INTO FUNCIONARIOS
VALUES  (1, '100020',
            'EMANUELY','GRABRIELE','ALVES',
            to_date('18/09/1999', 'DD/MM/YYYY'),
            'F',
            '5453216',
            '35635159',
            to_date('28/06/2021', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ESTAGIÁRIO'),
            750.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'RECURSOS HUMANOS'),
            (SELECT TUR_ID 
            FROM TURNOS 
            WHERE (TUR_HORA_SAIDA = to_date('01/01/2021 15:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND TUR_SAB = 'N')),
            '1133390',
            'RUA 01 DE NOVEMBRO',
            '04',
            '1',
            'RODEIO',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'MOGI DAS CRUZES')
        );


---------------- PRESIDENTE
INSERT INTO FUNCIONARIOS
VALUES  (1, '100021',
            'WILLIAN','ALBERT','ANDRETTA',
            to_date('08/09/1965', 'DD/MM/YYYY'),
            'M',
            '5453985',
            '35635000', 
            to_date('01/11/1986', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'PRESIDENTE'),
            22000.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'ADMINISTRAÇÃO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '719390',
            'AVENIDA BRASIL',
            '1000',
            '1',
            'COPACABANA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'RIO DE JANEIRO')
        );


--- OPERACIONAL
INSERT INTO FUNCIONARIOS
VALUES  (1, '100022',
            'MIGUEL','AUGUSTO','XAVIER',
            to_date('08/05/1971', 'DD/MM/YYYY'),
            'M',
            '46963985',
            '935635000', 
            to_date('02/11/2006', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'MOTORISTA'),
            1700.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'OPERACIONAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'S')),
            '0712390',
            'RUA SÃO LAZARO',
            '310',
            '1',
            'CENTRO',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SALESOPOLIS')
        );

INSERT INTO FUNCIONARIOS
VALUES  (1, '100023',
            'JOÃO','PAULO','MORAIS',
            to_date('09/03/1975', 'DD/MM/YYYY'),
            'M',
            '46963775',
            '935635500', 
            to_date('01/11/1990', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'MOTORISTA'),
            1850.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'OPERACIONAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'S')),
            '0712390',
            'RUA SÃO LOURENÇO',
            '310',
            '1',
            'CENTRO',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'BIRITIBA MIRIM')
        );




INSERT INTO FUNCIONARIOS
VALUES  (1, '100024',
            'LUCIA','SIQUEIRA','NOBREGA',
            to_date('02/04/1988', 'DD/MM/YYYY'),
            'F',
            '47998775',
            '975655580', 
            to_date('02/01/2001', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'AUXILIAR'),
            1300.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'OPERACIONAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0712390',
            'RUA SEBASTIAN',
            '790',
            '1',
            'CENTRO',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SANTA ISABEL')
        );


INSERT INTO FUNCIONARIOS
VALUES  (1, '100025',
            'ROSANA','TAVARES','OLIVEIRA',
            to_date('02/04/1988', 'DD/MM/YYYY'),
            'F',
            '47232775',
            '975658850', 
            to_date('12/01/2001', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'AUXILIAR'),
            1300.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'OPERACIONAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0232990',
            'RUA JORDÃO',
            '90',
            '1',
            'SIQUEIRA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SANTA ISABEL')
        );


        
INSERT INTO FUNCIONARIOS
VALUES  (1, '100026',
            'LAURA','ANA','OLIVEIRA',
            to_date('09/06/1991', 'DD/MM/YYYY'),
            'F',
            '47231478',
            '975632320', 
            to_date('12/06/1999', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'GERÊNCIA'),
            1900.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'OPERACIONAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0232990',
            'AVENIDA JOÃO',
            '990',
            '1',
            'SÃO MIGUEL',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'FERRAZ DE VASCONCELOS')
        );



INSERT INTO FUNCIONARIOS
VALUES  (1, '100027',
            'DAVI','EMANUEL','SILVA',
            to_date('02/04/1988', 'DD/MM/YYYY'),
            'F',
            '47911005',
            '975657878', 
            to_date('02/01/2013', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'ASSISTENTE'),
            1450.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'OPERACIONAL'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0712390',
            'VILA SÃO PAULO',
            '300',
            '1',
            'CENTRO',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'GUARAREMA')
        );


---------------------ADMINISTRAÇÃO--------------------------


        
INSERT INTO FUNCIONARIOS
VALUES  (1, '100028',
            'RODRIGO','OLEGARIO','COSTA',
            to_date('30/05/1995', 'DD/MM/YYYY'),
            'M',
            '476581285',
            '9756400000', 
            to_date('12/08/2011', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'COORDENAÇÃO'),
            2300.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'ADMINISTRAÇÃO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0232620',
            'AVENIDA SALES',
            '958',
            '1',
            'JARDIM MARICA',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'FERRAZ DE VASCONCELOS')
        );


INSERT INTO FUNCIONARIOS
VALUES  (1, '100027',
            'ROMEU','OLIVER','NORMAN',
            to_date('17/09/1995', 'DD/MM/YYYY'),
            'M',
            '478785285',
            '9756222235', 
            to_date('12/08/2018', 'DD/MM/YYYY'),
            (SELECT CAR_ID FROM CARGOS WHERE CAR_DESCRICAO = 'SECRETÁRIA'),
            1425.00,
            (SELECT DEP_ID FROM DEPARTAMENTOS WHERE DEP_DESCRICAO = 'ADMINISTRAÇÃO'),
            (SELECT TUR_ID 
                FROM TURNOS 
                WHERE (TUR_HORA_ENTRADA = to_date('01/01/2021 08:00:00', 'DD/MM/YYYY HH24:MI:SS') 
                    AND (TUR_HORA_SAIDA = to_date('01/01/2021 17:00:00', 'DD/MM/YYYY HH24:MI:SS'))
                    AND TUR_SAB = 'N')),
            '0232620',
            'RUA VARGAS',
            '987',
            '1',
            'PRAÇA JAPONES',
            (SELECT CID_ID FROM CIDADES WHERE CID_NOME = 'SUZANO')
        );
