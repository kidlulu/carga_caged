USE DB_CODEPLAN;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp; 

CREATE TABLE caged.tmp(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 admitidos varchar(max) null,
 desligados varchar(max) null,
 fonte_desl varchar(max) null,
 saldo varchar(max) null
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\caged\202001.txt' WITH (FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252);
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\caged\202002.txt' WITH (FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252);
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\caged\202003.txt' WITH (FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252);
BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\caged\202004.txt' WITH (FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252);

IF OBJECT_ID('caged.caged_des_202001_atual', 'U') IS NOT NULL DROP TABLE caged.caged_des_202001_atual; 

select
 cast(competencia as int) as competencia,
 cast(regiao as smallint) as regiao,
 cast(uf as smallint) as uf,
 cast(municipio as int) as municipio,
 cast(secao as char(1)) as secao,
 case when len(ltrim(rtrim(subclasse))) = 6 then cast(concat('0',ltrim(rtrim(subclasse))) as nchar(7)) else cast(subclasse as nchar(7)) end as subclasse,
 cast(admitidos as float) as admitidos,
 cast(desligados as float) as desligados,
 cast(fonte_desl as smallint) as fonte_desl,
 cast(saldo as float) as saldo
into caged.caged_des_202001_atual
from caged.tmp;

/****** Object:  Index [idx_referencia]    Script Date: 09/06/2020 11:53:16 ******/
CREATE NONCLUSTERED INDEX [idx_competencia] ON [caged].[caged_des_202001_atual]
([competencia] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];

CREATE NONCLUSTERED INDEX [idx_uf] ON [caged].[caged_des_202001_atual]
([uf] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];

CREATE NONCLUSTERED INDEX [idx_municipio] ON [caged].[caged_des_202001_atual]
([municipio] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp; 

CREATE TABLE caged.tmp(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 admitidos varchar(max) null,
 desligados varchar(max) null,
 fonte_desl varchar(max) null,
 saldo varchar(max) null
) ON [PRIMARY];

BULK INSERT caged.tmp FROM '\\10.73.53.224\carga\caged\acumulado202004.txt' WITH (FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252);

IF OBJECT_ID('caged.caged_des_acum_202001_atual', 'U') IS NOT NULL DROP TABLE caged.caged_des_acum_202001_atual; 

select
 cast(competencia as int) as competencia,
 cast(regiao as smallint) as regiao,
 cast(uf as smallint) as uf,
 cast(municipio as int) as municipio,
 cast(secao as char(1)) as secao,
 case when len(ltrim(rtrim(subclasse))) = 6 then cast(concat('0',ltrim(rtrim(subclasse))) as nchar(7)) else cast(subclasse as nchar(7)) end as subclasse,
 cast(admitidos as float) as admitidos,
 cast(desligados as float) as desligados,
 cast(fonte_desl as smallint) as fonte_desl,
 cast(saldo as float) as saldo
into caged.caged_des_acum_202001_atual
from caged.tmp;

IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp; 

/****** Object:  Index [idx_referencia]    Script Date: 09/06/2020 11:53:16 ******/
CREATE NONCLUSTERED INDEX [idx_competencia] ON [caged].[caged_des_acum_202001_atual]
([competencia] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];

CREATE NONCLUSTERED INDEX [idx_uf] ON [caged].[caged_des_acum_202001_atual]
([uf] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];

CREATE NONCLUSTERED INDEX [idx_municipio] ON [caged].[caged_des_acum_202001_atual]
([municipio] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY];