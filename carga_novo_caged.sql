USE DB_CODEPLAN;

/****** Object:  Table caged.estab_rf_202103    Script Date: 12/05/2021 09:25:14 ******/
SET ANSI_NULLS ON;

SET QUOTED_IDENTIFIER ON;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202103.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202102.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Março\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202103', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202103;

CREATE TABLE caged.estab_rf_202103(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202103
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202102.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Fevereiro\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202102', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202102;

CREATE TABLE caged.estab_rf_202102(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202102
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\2021\Janeiro\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202101', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202101;

CREATE TABLE caged.estab_rf_202101(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202101
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Dezembro\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202012', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202012;

CREATE TABLE caged.estab_rf_202012(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202012
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Novembro\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202011', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202011;

CREATE TABLE caged.estab_rf_202011(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202011
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Outubro\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202010', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202010;

CREATE TABLE caged.estab_rf_202010(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202010
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Setembro\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202009', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202009;

CREATE TABLE caged.estab_rf_202009(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202009
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Agosto\CAGEDESTAB202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Agosto\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Agosto\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Agosto\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Agosto\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Agosto\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Agosto\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Agosto\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202008', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202008;

CREATE TABLE caged.estab_rf_202008(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202008
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Julho\CAGEDESTAB202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Julho\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Julho\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Julho\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Julho\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Julho\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Julho\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202007', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202007;

CREATE TABLE caged.estab_rf_202007(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202007
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL,
	tamestabjan varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Junho\CAGEDESTAB202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Junho\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Junho\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Junho\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Junho\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Junho\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202006', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202006;

CREATE TABLE caged.estab_rf_202006(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL,
	tamestabjan tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202006
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento,
	cast(tamestabjan as tinyint) tamestabjan
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL,
	tipoempregador varchar(max) NULL,
	tipoestabelecimento varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Maio\CAGEDESTAB202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Maio\CAGEDESTAB202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Maio\CAGEDESTAB202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Maio\CAGEDESTAB202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Maio\CAGEDESTAB202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202005', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202005;

CREATE TABLE caged.estab_rf_202005(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL,
	tipoempregador tinyint NULL,
	tipoestabelecimento tinyint NULL
) ON [PRIMARY];

insert into caged.estab_rf_202005
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo,
	cast(tipoempregador as tinyint) tipoempregador,
	cast(tipoestabelecimento as tinyint) tipoestabelecimento
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Abril\acumulado202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202004', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202004;

CREATE TABLE caged.estab_rf_202004(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL
) ON [PRIMARY];

insert into caged.estab_rf_202004
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Março\acumulado202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202003', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202003;

CREATE TABLE caged.estab_rf_202003(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL
) ON [PRIMARY];

insert into caged.estab_rf_202003
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Fevereiro\acumulado202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202002', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202002;

CREATE TABLE caged.estab_rf_202002(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL
) ON [PRIMARY];

insert into caged.estab_rf_202002
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp;

CREATE TABLE caged.tmp(
	competencia varchar(max) NULL,
	regiao varchar(max) NULL,
	uf varchar(max) NULL,
	municipio varchar(max) NULL,
	secao varchar(max) NULL,
	subclasse varchar(max) NULL,
	admitidos varchar(max) NULL,
	desligados varchar(max) NULL,
	fonte_desl varchar(max) NULL,
	saldo varchar(max) NULL
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\ftp.mtps.gov.br\pdet\microdados\NOVO CAGED\Estabelecimentos\Janeiro\202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"'); 

IF OBJECT_ID('caged.estab_rf_202001', 'U') IS NOT NULL DROP TABLE caged.estab_rf_202001;

CREATE TABLE caged.estab_rf_202001(
	competencia int NULL,
	regiao tinyint NULL,
	uf tinyint NULL,
	municipio int NULL,
	secao varchar(1) NULL,
	subclasse int NULL,
	admitidos smallint NULL,
	desligados smallint NULL,
	fonte_desl tinyint NULL,
	saldo float NULL
) ON [PRIMARY];

insert into caged.estab_rf_202001
select 
	cast(competencia as int) competencia,
	cast(regiao as tinyint) regiao,
	cast(uf as tinyint) uf,
	cast(municipio as int) municipio,
	cast(secao as varchar(1)) secao,
	cast(subclasse as int) subclasse,
	cast(admitidos as smallint) admitidos,
	cast(desligados as smallint) desligados,
	cast(fonte_desl as tinyint) fonte_desl,
	cast(saldo as float) saldo
from caged.tmp;