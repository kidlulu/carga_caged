USE DB_CODEPLAN GO

/****** Object:  Table caged_id.caged_id_201301_atual    Script Date: 19/08/2019 11:53:13 ******/
SET ANSI_NULLS ON GO

SET QUOTED_IDENTIFIER ON GO

IF OBJECT_ID('caged_id.tmp', 'U') IS NOT NULL DROP TABLE caged_id.tmp GO 

CREATE TABLE caged_id.tmp(
	competenciadeclarada	varchar(max) null,
	municipio	varchar(max) null,
	anodeclarado	varchar(max) null,
	cbo2002ocupacao	varchar(max) null,
	cnae10classe	varchar(max) null,
	cnae20classe	varchar(max) null,
	competenciamovimentacao	varchar(max) null,
	dtadmissao	varchar(max) null,
	dtnascimento	varchar(max) null,
	fxempriniciojan	varchar(max) null,
	fxempriniciomes	varchar(max) null,
	grauinstrucao	varchar(max) null,
	qtdhoracontrat	varchar(max) null,
	idade	varchar(max) null,
	cnpjcei	varchar(max) null,
	indaprendiz	varchar(max) null,
	indinformesmacompet	varchar(max) null,
	pis	varchar(max) null,
	indportadordefic	varchar(max) null,
	racacor	varchar(max) null,
	vlsalariomensal	varchar(max) null,
	vlsalariomensaldeclarado	varchar(max) null,
	saldomov	varchar(max) null,
	cnae20subclasse	varchar(max) null,
	sexo	varchar(max) null,
	nometrabalhador	varchar(max) null,
	ibgesubsetor	varchar(max) null,
	tempoemprego	varchar(max) null,
	tipoestab	varchar(max) null,
	tipodefic	varchar(max) null,
	tipomovdesagregado	varchar(max) null,
	cep_estab	varchar(max) null,
	cpf	varchar(max) null,
	diamovimentacao	varchar(max) null,
	indtrabparcial	varchar(max) null,
	indtrabintermitente	varchar(max) null
) ON [PRIMARY] GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2019\CAGED_TRABALHADOR_AJUSTADO_072019.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2019\CAGED_TRABALHADOR_AJUSTADO_062019.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2019\CAGED_TRABALHADOR_AJUSTADO_052019.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2019\CAGED_TRABALHADOR_AJUSTADO_042019.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2019\CAGED_TRABALHADOR_AJUSTADO_032019.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2019\CAGED_TRABALHADOR_AJUSTADO_022019.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2019\CAGED_TRABALHADOR_AJUSTADO_012019.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_122018.TXT' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_112018.TXT' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_102018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_092018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_082018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_072018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_062018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_052018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO


IF OBJECT_ID('caged_id.rf_201301_atual', 'U') IS NOT NULL DROP TABLE caged_id.rf_201301_atual GO 

select
 case when isnumeric(substring(ltrim(rtrim(competenciadeclarada)),1,1)) = 1 then cast(ltrim(rtrim(competenciadeclarada)) as int) else null end as 	competenciadeclarada,
 case when isnumeric(substring(ltrim(rtrim(municipio)),1,1)) = 1 then cast(ltrim(rtrim(municipio)) as int) else null end as 	municipio,
 case when isnumeric(substring(ltrim(rtrim(anodeclarado)),1,1)) = 1 then cast(ltrim(rtrim(anodeclarado)) as smallint) else null end as 	anodeclarado,
 cast(ltrim(rtrim(cbo2002ocupacao)) as nchar(6)) as 	cbo2002ocupacao,
 cast(ltrim(rtrim(cnae10classe)) as nchar(5)) as 	cnae10classe,
 cast(ltrim(rtrim(cnae20classe)) as nchar(7)) as 	cnae20classe,
 case when isnumeric(substring(ltrim(rtrim(competenciamovimentacao)),1,1)) = 1 then cast(ltrim(rtrim(competenciamovimentacao)) as int) else null end as 	competenciamovimentacao,
 case when ltrim(rtrim(dtadmissao)) = '00000000' then null 
      when isnumeric(substring(ltrim(rtrim(dtadmissao)),1,1)) = 1 then convert(varchar(10), concat(substring(dtadmissao,1,2),'/',substring(dtadmissao,3,2),'/',substring(dtadmissao,5,4)), 103) 
      else null 
 end as 	dtadmissao,
 case when ltrim(rtrim(dtnascimento)) = '00000000' then null 
      when isnumeric(substring(ltrim(rtrim(dtnascimento)),1,1)) = 1 then convert(varchar(10), concat(substring(dtnascimento,1,2),'/',substring(dtnascimento,3,2),'/',substring(dtnascimento,5,4)), 103) 
      else null 
 end as 	dtnascimento,
 case when isnumeric(substring(ltrim(rtrim(fxempriniciojan)),1,1)) = 1 then cast(ltrim(rtrim(fxempriniciojan)) as smallint) else null end as 	fxempriniciojan,
 case when isnumeric(substring(ltrim(rtrim(fxempriniciomes)),1,1)) = 1 then cast(ltrim(rtrim(fxempriniciomes)) as smallint) else null end as 	fxempriniciomes,
 case when isnumeric(substring(ltrim(rtrim(grauinstrucao)),1,1)) = 1 then cast(ltrim(rtrim(grauinstrucao)) as smallint) else null end as 	grauinstrucao,
 case when isnumeric(substring(ltrim(rtrim(qtdhoracontrat)),1,1)) = 1 then cast(ltrim(rtrim(replace(qtdhoracontrat,',','.'))) as float) else null end as 	qtdhoracontrat,
 case when isnumeric(substring(ltrim(rtrim(idade)),1,1)) = 1 then cast(ltrim(rtrim(idade)) as smallint) else null end as 	idade,
 cast(ltrim(rtrim(cnpjcei)) as nchar(14)) as 	cnpjcei,
 case when isnumeric(substring(ltrim(rtrim(indaprendiz)),1,1)) = 1 then cast(ltrim(rtrim(indaprendiz)) as smallint) else null end as 	indaprendiz,
 case when isnumeric(substring(ltrim(rtrim(indinformesmacompet)),1,1)) = 1 then cast(ltrim(rtrim(indinformesmacompet)) as smallint) else null end as 	indinformesmacompet,
 cast(ltrim(rtrim(pis)) as nchar(11)) as 	pis,
 case when isnumeric(substring(ltrim(rtrim(indportadordefic)),1,1)) = 1 then cast(ltrim(rtrim(indportadordefic)) as smallint) else null end as 	indportadordefic,
 case when isnumeric(substring(ltrim(rtrim(racacor)),1,1)) = 1 then cast(ltrim(rtrim(racacor)) as smallint) else null end as 	racacor,
 case when isnumeric(substring(ltrim(rtrim(vlsalariomensal)),1,1)) = 1 then cast(ltrim(rtrim(replace(vlsalariomensal,',','.'))) as float) else null end as 	vlsalariomensal,
 case when isnumeric(substring(ltrim(rtrim(vlsalariomensaldeclarado)),1,1)) = 1 then cast(ltrim(rtrim(replace(vlsalariomensaldeclarado,',','.'))) as float) else null end as 	vlsalariomensaldeclarado,
 case when isnumeric(substring(ltrim(rtrim(saldomov)),1,1)) = 1 then cast(ltrim(rtrim(saldomov)) as numeric) else null end as 	saldomov,
 cast(ltrim(rtrim(cnae20subclasse)) as nchar(7)) as 	cnae20subclasse,
 case when isnumeric(substring(ltrim(rtrim(sexo)),1,1)) = 1 then cast(ltrim(rtrim(sexo)) as smallint) else null end as 	sexo,
 cast(ltrim(rtrim(nometrabalhador)) as varchar(60)) as 	nometrabalhador,
 case when isnumeric(substring(ltrim(rtrim(ibgesubsetor)),1,1)) = 1 then cast(ltrim(rtrim(ibgesubsetor)) as smallint) else null end as 	ibgesubsetor,
 case when isnumeric(substring(ltrim(rtrim(tempoemprego)),1,1)) = 1 then cast(ltrim(rtrim(replace(tempoemprego,',','.'))) as float) else null end as 	tempoemprego,
 case when isnumeric(substring(ltrim(rtrim(tipoestab)),1,1)) = 1 then cast(ltrim(rtrim(tipoestab)) as smallint) else null end as 	tipoestab,
 case when isnumeric(substring(ltrim(rtrim(tipodefic)),1,1)) = 1 then cast(ltrim(rtrim(tipodefic)) as smallint) else null end as 	tipodefic,
 case when isnumeric(substring(ltrim(rtrim(tipomovdesagregado)),1,1)) = 1 then cast(ltrim(rtrim(tipomovdesagregado)) as smallint) else null end as 	tipomovdesagregado,
 cast(ltrim(rtrim(cep_estab)) as nchar(8)) as 	cep_estab,
 cast(ltrim(rtrim(cpf)) as nchar(11)) as 	cpf,
 case when isnumeric(substring(ltrim(rtrim(diamovimentacao)),1,1)) = 1 then cast(ltrim(rtrim(diamovimentacao)) as smallint) else null end as 	diamovimentacao,
 case when isnumeric(substring(ltrim(rtrim(indtrabparcial)),1,1)) = 1 then cast(ltrim(rtrim(indtrabparcial)) as smallint) else null end as 	indtrabparcial,
 case when isnumeric(substring(ltrim(rtrim(indtrabintermitente)),1,1)) = 1 then cast(ltrim(rtrim(indtrabintermitente)) as smallint) else null end as 	indtrabintermitente
into caged_id.rf_201301_atual
from caged_id.tmp GO

IF OBJECT_ID('caged_id.tmp', 'U') IS NOT NULL DROP TABLE caged_id.tmp GO 

CREATE TABLE caged_id.tmp(
	competenciadeclarada	varchar(max) null,
	municipio	varchar(max) null,
	anodeclarado	varchar(max) null,
	cbo2002ocupacao	varchar(max) null,
	cnae10classe	varchar(max) null,
	cnae20classe	varchar(max) null,
	competenciamovimentacao	varchar(max) null,
	dtadmissao	varchar(max) null,
	dtnascimento	varchar(max) null,
	fxempriniciojan	varchar(max) null,
	fxempriniciomes	varchar(max) null,
	grauinstrucao	varchar(max) null,
	qtdhoracontrat	varchar(max) null,
	idade	varchar(max) null,
	cnpjcei	varchar(max) null,
	indaprendiz	varchar(max) null,
	indinformesmacompet	varchar(max) null,
	pis	varchar(max) null,
	indportadordefic	varchar(max) null,
	racacor	varchar(max) null,
	vlsalariomensal	varchar(max) null,
	vlsalariomensaldeclarado	varchar(max) null,
	saldomov	varchar(max) null,
	cnae20subclasse	varchar(max) null,
	sexo	varchar(max) null,
	nometrabalhador	varchar(max) null,
	ibgesubsetor	varchar(max) null,
	tempoemprego	varchar(max) null,
	tipoestab	varchar(max) null,
	tipodefic	varchar(max) null,
	tipomovdesagregado	varchar(max) null,
	cep_estab	varchar(max) null,
	cpf	varchar(max) null,
	diamovimentacao	varchar(max) null
) ON [PRIMARY] GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_042018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_032018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_022018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2018\CAGED_TRABALHADOR_AJUSTADO_012018.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_122017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_112017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_102017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_092017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_082017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_072017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_062017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_052017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_042017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_032017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_022017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2017\CAGED_TRABALHADOR_AJUSTADO_012017.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_AJUSTADO_122016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_AJUSTADO_112016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_AJUSTADO_102016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_COM_AJUSTES_092016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_AJUSTADO_082016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_072016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_062016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_052016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_042016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_032016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_022016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2016\CAGED_TRABALHADOR_012016.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_122015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_112015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_102015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_092015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_082015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_072015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_062015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_052015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_042015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_032015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_022015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2015\CAGED_TRABALHADOR_012015.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_122014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_112014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_102014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_092014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_082014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_072014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_062014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_052014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_042014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_032014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_022014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2014\CAGED_TRABALHADOR_012014.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_122013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_122013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_112013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_102013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_092013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_082013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_072013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_062013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_052013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_042013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_032013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_022013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO

BULK INSERT caged_id.tmp FROM '\\320CDL415.codeplandf.gdfnet.df\carga\CAGED_ID\2013\CAGED_TRABALHADOR_AJUSTADO_012013.txt' WITH (FIELDTERMINATOR=';',FIRSTROW=2, codepage=1252) GO


insert into caged_id.rf_201301_atual
select
 case when isnumeric(substring(ltrim(rtrim(competenciadeclarada)),1,1)) = 1 then cast(ltrim(rtrim(competenciadeclarada)) as int) else null end as 	competenciadeclarada,
 case when isnumeric(substring(ltrim(rtrim(municipio)),1,1)) = 1 then cast(ltrim(rtrim(municipio)) as int) else null end as 	municipio,
 case when isnumeric(substring(ltrim(rtrim(anodeclarado)),1,1)) = 1 then cast(ltrim(rtrim(anodeclarado)) as smallint) else null end as 	anodeclarado,
 cast(ltrim(rtrim(cbo2002ocupacao)) as nchar(6)) as 	cbo2002ocupacao,
 cast(ltrim(rtrim(cnae10classe)) as nchar(5)) as 	cnae10classe,
 cast(ltrim(rtrim(cnae20classe)) as nchar(7)) as 	cnae20classe,
 case when isnumeric(substring(ltrim(rtrim(competenciamovimentacao)),1,1)) = 1 then cast(ltrim(rtrim(competenciamovimentacao)) as int) else null end as 	competenciamovimentacao,
 case when ltrim(rtrim(dtadmissao)) = '00000000' then null 
      when isnumeric(substring(ltrim(rtrim(dtadmissao)),1,1)) = 1 then convert(varchar(10), concat(substring(dtadmissao,1,2),'/',substring(dtadmissao,3,2),'/',substring(dtadmissao,5,4)), 103) 
      else null 
 end as 	dtadmissao,
 case when ltrim(rtrim(dtnascimento)) = '00000000' then null 
      when isnumeric(substring(ltrim(rtrim(dtnascimento)),1,1)) = 1 then convert(varchar(10), concat(substring(dtnascimento,1,2),'/',substring(dtnascimento,3,2),'/',substring(dtnascimento,5,4)), 103) 
      else null 
 end as 	dtnascimento,
 case when isnumeric(substring(ltrim(rtrim(fxempriniciojan)),1,1)) = 1 then cast(ltrim(rtrim(fxempriniciojan)) as smallint) else null end as 	fxempriniciojan,
 case when isnumeric(substring(ltrim(rtrim(fxempriniciomes)),1,1)) = 1 then cast(ltrim(rtrim(fxempriniciomes)) as smallint) else null end as 	fxempriniciomes,
 case when isnumeric(substring(ltrim(rtrim(grauinstrucao)),1,1)) = 1 then cast(ltrim(rtrim(grauinstrucao)) as smallint) else null end as 	grauinstrucao,
 case when isnumeric(substring(ltrim(rtrim(qtdhoracontrat)),1,1)) = 1 then cast(ltrim(rtrim(replace(qtdhoracontrat,',','.'))) as float) else null end as 	qtdhoracontrat,
 case when isnumeric(substring(ltrim(rtrim(idade)),1,1)) = 1 then cast(ltrim(rtrim(idade)) as smallint) else null end as 	idade,
 cast(ltrim(rtrim(cnpjcei)) as nchar(14)) as 	cnpjcei,
 case when isnumeric(substring(ltrim(rtrim(indaprendiz)),1,1)) = 1 then cast(ltrim(rtrim(indaprendiz)) as smallint) else null end as 	indaprendiz,
 case when isnumeric(substring(ltrim(rtrim(indinformesmacompet)),1,1)) = 1 then cast(ltrim(rtrim(indinformesmacompet)) as smallint) else null end as 	indinformesmacompet,
 cast(ltrim(rtrim(pis)) as nchar(11)) as 	pis,
 case when isnumeric(substring(ltrim(rtrim(indportadordefic)),1,1)) = 1 then cast(ltrim(rtrim(indportadordefic)) as smallint) else null end as 	indportadordefic,
 case when isnumeric(substring(ltrim(rtrim(racacor)),1,1)) = 1 then cast(ltrim(rtrim(racacor)) as smallint) else null end as 	racacor,
 case when isnumeric(substring(ltrim(rtrim(vlsalariomensal)),1,1)) = 1 then cast(ltrim(rtrim(replace(vlsalariomensal,',','.'))) as float) else null end as 	vlsalariomensal,
 case when isnumeric(substring(ltrim(rtrim(vlsalariomensaldeclarado)),1,1)) = 1 then cast(ltrim(rtrim(replace(vlsalariomensaldeclarado,',','.'))) as float) else null end as 	vlsalariomensaldeclarado,
 case when isnumeric(substring(ltrim(rtrim(saldomov)),1,1)) = 1 then cast(ltrim(rtrim(saldomov)) as numeric) else null end as 	saldomov,
 cast(ltrim(rtrim(cnae20subclasse)) as nchar(7)) as 	cnae20subclasse,
 case when isnumeric(substring(ltrim(rtrim(sexo)),1,1)) = 1 then cast(ltrim(rtrim(sexo)) as smallint) else null end as 	sexo,
 cast(ltrim(rtrim(nometrabalhador)) as varchar(60)) as 	nometrabalhador,
 case when isnumeric(substring(ltrim(rtrim(ibgesubsetor)),1,1)) = 1 then cast(ltrim(rtrim(ibgesubsetor)) as smallint) else null end as 	ibgesubsetor,
 case when isnumeric(substring(ltrim(rtrim(tempoemprego)),1,1)) = 1 then cast(ltrim(rtrim(replace(tempoemprego,',','.'))) as float) else null end as 	tempoemprego,
 case when isnumeric(substring(ltrim(rtrim(tipoestab)),1,1)) = 1 then cast(ltrim(rtrim(tipoestab)) as smallint) else null end as 	tipoestab,
 case when isnumeric(substring(ltrim(rtrim(tipodefic)),1,1)) = 1 then cast(ltrim(rtrim(tipodefic)) as smallint) else null end as 	tipodefic,
 case when isnumeric(substring(ltrim(rtrim(tipomovdesagregado)),1,1)) = 1 then cast(ltrim(rtrim(tipomovdesagregado)) as smallint) else null end as 	tipomovdesagregado,
 cast(ltrim(rtrim(cep_estab)) as nchar(8)) as 	cep_estab,
 cast(ltrim(rtrim(cpf)) as nchar(11)) as 	cpf,
 case when isnumeric(substring(ltrim(rtrim(diamovimentacao)),1,1)) = 1 then cast(ltrim(rtrim(diamovimentacao)) as smallint) else null end as 	diamovimentacao,
 cast(null as smallint) as 	indtrabparcial,
 cast(null as smallint) as 	indtrabintermitente
from caged_id.tmp GO