use DB_CODEPLAN;

SET QUOTED_IDENTIFIER ON
GO

IF OBJECT_ID('caged_id.tmp', 'U') IS NOT NULL DROP TABLE caged_id.tmp
go

CREATE TABLE caged_id.tmp(
  competencia varchar(max) null,
  regiao varchar(max) null,
  uf varchar(max) null,
  municipio varchar(max) null,
  secao varchar(max) null,
  subclasse varchar(max) null,
  saldomovimentacao varchar(max) null,
  cbo2002ocupacao varchar(max) null,
  cpf varchar(max) null,
  categoria varchar(max) null,
  graudeinstrucao varchar(max) null,
  idade varchar(max) null,
  cnpjraiz varchar(max) null,
  cnpjcei varchar(max) null,
  horascontratuais varchar(max) null,
  racacor varchar(max) null,
  sexo varchar(max) null,
  tipoempregador varchar(max) null,
  tipoestabelecimento varchar(max) null,
  tipomovimentacao varchar(max) null,
  tipodedeficiencia varchar(max) null,
  indtrabintermitente varchar(max) null,
  indtrabparcial varchar(max) null,
  salario varchar(max) null,
  tamestabjan varchar(max) null,
  indicadoraprendiz varchar(max) null,
  fonte varchar(max) null) ON [PRIMARY]
GO

BULK INSERT caged_id.tmp FROM '\\10.73.53.224\carga\CAGED_ID\CAGEDMOV202001ID.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252)
GO

BULK INSERT caged_id.tmp FROM '\\10.73.53.224\carga\CAGED_ID\CAGEDMOV202002ID.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252)
GO

BULK INSERT caged_id.tmp FROM '\\10.73.53.224\carga\CAGED_ID\CAGEDMOV202003ID.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252)
GO

BULK INSERT caged_id.tmp FROM '\\10.73.53.224\carga\CAGED_ID\CAGEDMOV202004ID.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252)
GO

BULK INSERT caged_id.tmp FROM '\\10.73.53.224\carga\CAGED_ID\CAGEDMOV202005ID.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252)
GO

BULK INSERT caged_id.tmp FROM '\\10.73.53.224\carga\CAGED_ID\CAGEDMOV202006ID.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252)
GO

BULK INSERT caged_id.tmp FROM '\\10.73.53.224\carga\CAGED_ID\CAGEDMOV202007ID.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252)
GO

IF OBJECT_ID('caged_id.caged_mov_202001_atual', 'U') IS NOT NULL DROP TABLE caged_id.caged_mov_202001_atual
go

select 
  cast(competencia as int) as competencia,
  cast(regiao as smallint) as regiao,
  cast(uf as smallint) as uf,
  cast(municipio as int) as municipio,
  cast(secao as nchar(1)) as secao,
  cast(subclasse as nchar(7)) as subclasse,
  cast(saldomovimentacao as float) as saldomov,
  cast(cbo2002ocupacao as bigint) as cbo2002ocupacao,
  cast(cpf as bigint) as cpf,
  cast(categoria as smallint) as categoria,
  cast(graudeinstrucao as smallint) as graudeinstrucao,
  cast(idade as smallint) as idade,
  cast(cnpjraiz as bigint) as cnpjraiz,
  cast(cnpjcei as bigint) as cnpjcei,
  cast(horascontratuais as float) as horascontratuais,
  cast(racacor as smallint) as racacor,
  cast(sexo as smallint) as sexo,
  cast(tipoempregador as smallint) as tipoempregador,
  cast(tipoestabelecimento as smallint) as tipoestabelecimento,
  cast(tipomovimentacao as smallint) as tipomovimentacao,
  cast(tipodedeficiencia as smallint) as tipodedeficiencia,
  cast(indtrabintermitente as smallint) as indtrabintermitente,
  cast(indtrabparcial as smallint) as indtrabparcial,
  cast(salario as float) as salario,
  cast(tamestabjan as smallint) as tamestabjan,
  cast(indicadoraprendiz as smallint) as indicadoraprendiz,
  cast(fonte as smallint) as fonte
into caged_id.caged_mov_202001_atual
from caged_id.tmp
GO

CREATE NONCLUSTERED INDEX [idx_uf] ON [caged_id].[caged_mov_202001_atual]
([uf] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [idx_municipio] ON [caged_id].[caged_mov_202001_atual]
([municipio] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [idx_cnpjcei] ON [caged_id].[caged_mov_202001_atual]
([cnpjcei] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [idx_cbo2002ocupacao] ON [caged_id].[caged_mov_202001_atual]
([cbo2002ocupacao] ASC
)WITH (PAD_INDEX = OFF, 
       STATISTICS_NORECOMPUTE = OFF, 
	   SORT_IN_TEMPDB = OFF, 
	   DROP_EXISTING = OFF, 
	   ONLINE = OFF, 
	   ALLOW_ROW_LOCKS = ON, 
	   ALLOW_PAGE_LOCKS = ON) 
ON [PRIMARY]
GO

IF OBJECT_ID('caged_id.tmp', 'U') IS NOT NULL DROP TABLE caged_id.tmp
go

