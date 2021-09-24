use DB_CODEPLAN;

ALTER USER [35866] WITH DEFAULT_SCHEMA = [caged];

BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;

BEGIN TRANSACTION;
CREATE TABLE tmp2(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 saldomovimentacao varchar(max) null,
 cbo2002ocupacao varchar(max) null,
 categoria varchar(max) null,
 graudeinstrucao varchar(max) null,
 idade varchar(max) null,
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
 fonte varchar(max) null
) ON [PRIMARY];
COMMIT TRANSACTION;

BEGIN TRANSACTION;
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202001.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Janeiro\CAGEDMOV202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
COMMIT TRANSACTION;

IF OBJECT_ID('caged_vinc_202001_atual', 'U') IS NOT NULL DROP TABLE caged_vinc_202001_atual; 

select
 cast(categoria as int) as categoria,
 cast(cbo2002ocupacao as bigint) as cbo2002ocupacao,
 cast(competencia as int) as competencia,
 cast(fonte as smallint) as fonte,
 cast(graudeinstrucao as smallint) as graudeinstrucao,
 cast(horascontratuais as smallint) as horascontratuais,
 cast(idade as smallint) as idade,
 cast(indicadoraprendiz as smallint) as indicadoraprendiz,
 cast(indtrabintermitente as smallint) as indtrabintermitente,
 cast(indtrabparcial as smallint) as indtrabparcial,
 cast(municipio as int) as municipio,
 cast(racacor as smallint) as racacor,
 cast(regiao as smallint) as regiao,
 cast(salario as float) as salario,
 cast(saldomovimentacao as smallint) as saldomovimentacao,
 cast(secao as nchar(1)) as secao,
 cast(sexo as smallint) as sexo,
 cast(subclasse as int) as subclasse,
 cast(tamestabjan as smallint) as tamestabjan,
 cast(tipodedeficiencia as smallint) as tipodedeficiencia,
 cast(tipoempregador as smallint) as tipoempregador,
 cast(tipoestabelecimento as smallint) as tipoestabelecimento,
 cast(tipomovimentacao as smallint) as tipomovimentacao,
 cast(uf as smallint) as uf
into caged_vinc_202001_atual
from tmp2;












BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;

BEGIN TRANSACTION;
CREATE TABLE tmp2(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 saldomovimentacao varchar(max) null,
 cbo2002ocupacao varchar(max) null,
 categoria varchar(max) null,
 graudeinstrucao varchar(max) null,
 idade varchar(max) null,
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
 fonte varchar(max) null
) ON [PRIMARY];
COMMIT TRANSACTION;

BEGIN TRANSACTION;
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202002.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Fevereiro\CAGEDMOV202102.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
DELETE FROM [caged_vinc_202001_atual] WHERE competencia >= 202002;
COMMIT TRANSACTION;


BEGIN TRANSACTION;
insert into caged_vinc_202001_atual
select
 cast(categoria as int) as categoria,
 cast(cbo2002ocupacao as bigint) as cbo2002ocupacao,
 cast(competencia as int) as competencia,
 cast(fonte as smallint) as fonte,
 cast(graudeinstrucao as smallint) as graudeinstrucao,
 cast(horascontratuais as smallint) as horascontratuais,
 cast(idade as smallint) as idade,
 cast(indicadoraprendiz as smallint) as indicadoraprendiz,
 cast(indtrabintermitente as smallint) as indtrabintermitente,
 cast(indtrabparcial as smallint) as indtrabparcial,
 cast(municipio as int) as municipio,
 cast(racacor as smallint) as racacor,
 cast(regiao as smallint) as regiao,
 cast(salario as float) as salario,
 cast(saldomovimentacao as smallint) as saldomovimentacao,
 cast(secao as nchar(1)) as secao,
 cast(sexo as smallint) as sexo,
 cast(subclasse as int) as subclasse,
 cast(tamestabjan as smallint) as tamestabjan,
 cast(tipodedeficiencia as smallint) as tipodedeficiencia,
 cast(tipoempregador as smallint) as tipoempregador,
 cast(tipoestabelecimento as smallint) as tipoestabelecimento,
 cast(tipomovimentacao as smallint) as tipomovimentacao,
 cast(uf as smallint) as uf
from tmp2;
COMMIT TRANSACTION;












BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;

BEGIN TRANSACTION;
CREATE TABLE tmp2(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 saldomovimentacao varchar(max) null,
 cbo2002ocupacao varchar(max) null,
 categoria varchar(max) null,
 graudeinstrucao varchar(max) null,
 idade varchar(max) null,
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
 fonte varchar(max) null
) ON [PRIMARY];
COMMIT TRANSACTION;

BEGIN TRANSACTION;
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202003.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202102.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Março\CAGEDMOV202103.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
DELETE FROM [caged_vinc_202001_atual] WHERE competencia >= 202003;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
insert into caged_vinc_202001_atual
select
 cast(categoria as int) as categoria,
 cast(cbo2002ocupacao as bigint) as cbo2002ocupacao,
 cast(competencia as int) as competencia,
 cast(fonte as smallint) as fonte,
 cast(graudeinstrucao as smallint) as graudeinstrucao,
 cast(horascontratuais as smallint) as horascontratuais,
 cast(idade as smallint) as idade,
 cast(indicadoraprendiz as smallint) as indicadoraprendiz,
 cast(indtrabintermitente as smallint) as indtrabintermitente,
 cast(indtrabparcial as smallint) as indtrabparcial,
 cast(municipio as int) as municipio,
 cast(racacor as smallint) as racacor,
 cast(regiao as smallint) as regiao,
 cast(salario as float) as salario,
 cast(saldomovimentacao as smallint) as saldomovimentacao,
 cast(secao as nchar(1)) as secao,
 cast(sexo as smallint) as sexo,
 cast(subclasse as int) as subclasse,
 cast(tamestabjan as smallint) as tamestabjan,
 cast(tipodedeficiencia as smallint) as tipodedeficiencia,
 cast(tipoempregador as smallint) as tipoempregador,
 cast(tipoestabelecimento as smallint) as tipoestabelecimento,
 cast(tipomovimentacao as smallint) as tipomovimentacao,
 cast(uf as smallint) as uf
from tmp2;
COMMIT TRANSACTION;












BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;

BEGIN TRANSACTION;
CREATE TABLE tmp2(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 saldomovimentacao varchar(max) null,
 cbo2002ocupacao varchar(max) null,
 categoria varchar(max) null,
 graudeinstrucao varchar(max) null,
 idade varchar(max) null,
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
 fonte varchar(max) null
) ON [PRIMARY];
COMMIT TRANSACTION;

BEGIN TRANSACTION;
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202004.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202102.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202103.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Abril\CAGEDMOV202104.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
DELETE FROM [caged_vinc_202001_atual] WHERE competencia >= 202004;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
insert into caged_vinc_202001_atual
select
 cast(categoria as int) as categoria,
 cast(cbo2002ocupacao as bigint) as cbo2002ocupacao,
 cast(competencia as int) as competencia,
 cast(fonte as smallint) as fonte,
 cast(graudeinstrucao as smallint) as graudeinstrucao,
 cast(horascontratuais as smallint) as horascontratuais,
 cast(idade as smallint) as idade,
 cast(indicadoraprendiz as smallint) as indicadoraprendiz,
 cast(indtrabintermitente as smallint) as indtrabintermitente,
 cast(indtrabparcial as smallint) as indtrabparcial,
 cast(municipio as int) as municipio,
 cast(racacor as smallint) as racacor,
 cast(regiao as smallint) as regiao,
 cast(salario as float) as salario,
 cast(saldomovimentacao as smallint) as saldomovimentacao,
 cast(secao as nchar(1)) as secao,
 cast(sexo as smallint) as sexo,
 cast(subclasse as int) as subclasse,
 cast(tamestabjan as smallint) as tamestabjan,
 cast(tipodedeficiencia as smallint) as tipodedeficiencia,
 cast(tipoempregador as smallint) as tipoempregador,
 cast(tipoestabelecimento as smallint) as tipoestabelecimento,
 cast(tipomovimentacao as smallint) as tipomovimentacao,
 cast(uf as smallint) as uf
from tmp2;
COMMIT TRANSACTION;












BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;

BEGIN TRANSACTION;
CREATE TABLE tmp2(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 saldomovimentacao varchar(max) null,
 cbo2002ocupacao varchar(max) null,
 categoria varchar(max) null,
 graudeinstrucao varchar(max) null,
 idade varchar(max) null,
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
 fonte varchar(max) null
) ON [PRIMARY];
COMMIT TRANSACTION;

BEGIN TRANSACTION;
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202005.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202102.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202103.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202104.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Maio\CAGEDMOV202105.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
DELETE FROM [caged_vinc_202001_atual] WHERE competencia >= 202005;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
insert into caged_vinc_202001_atual
select
 cast(categoria as int) as categoria,
 cast(cbo2002ocupacao as bigint) as cbo2002ocupacao,
 cast(competencia as int) as competencia,
 cast(fonte as smallint) as fonte,
 cast(graudeinstrucao as smallint) as graudeinstrucao,
 cast(horascontratuais as smallint) as horascontratuais,
 cast(idade as smallint) as idade,
 cast(indicadoraprendiz as smallint) as indicadoraprendiz,
 cast(indtrabintermitente as smallint) as indtrabintermitente,
 cast(indtrabparcial as smallint) as indtrabparcial,
 cast(municipio as int) as municipio,
 cast(racacor as smallint) as racacor,
 cast(regiao as smallint) as regiao,
 cast(salario as float) as salario,
 cast(saldomovimentacao as smallint) as saldomovimentacao,
 cast(secao as nchar(1)) as secao,
 cast(sexo as smallint) as sexo,
 cast(subclasse as int) as subclasse,
 cast(tamestabjan as smallint) as tamestabjan,
 cast(tipodedeficiencia as smallint) as tipodedeficiencia,
 cast(tipoempregador as smallint) as tipoempregador,
 cast(tipoestabelecimento as smallint) as tipoestabelecimento,
 cast(tipomovimentacao as smallint) as tipomovimentacao,
 cast(uf as smallint) as uf
from tmp2;
COMMIT TRANSACTION;












BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;

BEGIN TRANSACTION;
CREATE TABLE tmp2(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 saldomovimentacao varchar(max) null,
 cbo2002ocupacao varchar(max) null,
 categoria varchar(max) null,
 graudeinstrucao varchar(max) null,
 idade varchar(max) null,
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
 fonte varchar(max) null
) ON [PRIMARY];
COMMIT TRANSACTION;

BEGIN TRANSACTION;
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202006.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202102.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202103.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202104.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202105.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Junho\CAGEDMOV202106.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
DELETE FROM [caged_vinc_202001_atual] WHERE competencia >= 202006;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
insert into caged_vinc_202001_atual
select
 cast(categoria as int) as categoria,
 cast(cbo2002ocupacao as bigint) as cbo2002ocupacao,
 cast(competencia as int) as competencia,
 cast(fonte as smallint) as fonte,
 cast(graudeinstrucao as smallint) as graudeinstrucao,
 cast(horascontratuais as smallint) as horascontratuais,
 cast(idade as smallint) as idade,
 cast(indicadoraprendiz as smallint) as indicadoraprendiz,
 cast(indtrabintermitente as smallint) as indtrabintermitente,
 cast(indtrabparcial as smallint) as indtrabparcial,
 cast(municipio as int) as municipio,
 cast(racacor as smallint) as racacor,
 cast(regiao as smallint) as regiao,
 cast(salario as float) as salario,
 cast(saldomovimentacao as smallint) as saldomovimentacao,
 cast(secao as nchar(1)) as secao,
 cast(sexo as smallint) as sexo,
 cast(subclasse as int) as subclasse,
 cast(tamestabjan as smallint) as tamestabjan,
 cast(tipodedeficiencia as smallint) as tipodedeficiencia,
 cast(tipoempregador as smallint) as tipoempregador,
 cast(tipoestabelecimento as smallint) as tipoestabelecimento,
 cast(tipomovimentacao as smallint) as tipomovimentacao,
 cast(uf as smallint) as uf
from tmp2;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;












BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;

BEGIN TRANSACTION;
CREATE TABLE tmp2(
 competencia varchar(max) null,
 regiao varchar(max) null,
 uf varchar(max) null,
 municipio varchar(max) null,
 secao varchar(max) null,
 subclasse varchar(max) null,
 saldomovimentacao varchar(max) null,
 cbo2002ocupacao varchar(max) null,
 categoria varchar(max) null,
 graudeinstrucao varchar(max) null,
 idade varchar(max) null,
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
 fonte varchar(max) null
) ON [PRIMARY];
COMMIT TRANSACTION;

BEGIN TRANSACTION;
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202007.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202008.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202009.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202010.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202011.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202012.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202101.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202102.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202103.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202104.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202105.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202106.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
BULK INSERT tmp2 FROM '\\10.73.53.224\carga\caged\Movimentacoes\2021\Julho\CAGEDMOV202107.txt' WITH (FORMAT = 'CSV', FIELDTERMINATOR=';', FIRSTROW=2, codepage=1252, FIELDQUOTE = '"');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
DELETE FROM [caged_vinc_202001_atual] WHERE competencia >= 202007;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
insert into caged_vinc_202001_atual
select
 cast(categoria as int) as categoria,
 cast(cbo2002ocupacao as bigint) as cbo2002ocupacao,
 cast(competencia as int) as competencia,
 cast(fonte as smallint) as fonte,
 cast(graudeinstrucao as smallint) as graudeinstrucao,
 cast(horascontratuais as smallint) as horascontratuais,
 cast(idade as smallint) as idade,
 cast(indicadoraprendiz as smallint) as indicadoraprendiz,
 cast(indtrabintermitente as smallint) as indtrabintermitente,
 cast(indtrabparcial as smallint) as indtrabparcial,
 cast(municipio as int) as municipio,
 cast(racacor as smallint) as racacor,
 cast(regiao as smallint) as regiao,
 cast(salario as float) as salario,
 cast(saldomovimentacao as smallint) as saldomovimentacao,
 cast(secao as nchar(1)) as secao,
 cast(sexo as smallint) as sexo,
 cast(subclasse as int) as subclasse,
 cast(tamestabjan as smallint) as tamestabjan,
 cast(tipodedeficiencia as smallint) as tipodedeficiencia,
 cast(tipoempregador as smallint) as tipoempregador,
 cast(tipoestabelecimento as smallint) as tipoestabelecimento,
 cast(tipomovimentacao as smallint) as tipomovimentacao,
 cast(uf as smallint) as uf
from tmp2;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
IF OBJECT_ID('tmp2', 'U') IS NOT NULL DROP TABLE tmp2; 
COMMIT TRANSACTION;