* Encoding: windows-1252.
dataset close all.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202101\CAGEDMOV202001ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
*compute salario = replace(salario,'.',',').
EXECUTE.
DATASET NAME d202001.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202102\CAGEDMOV202002ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202002.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202103\CAGEDMOV202003ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202003.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202004ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202004.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202005ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202005.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202006ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202006.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202007ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202007.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202008ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202008.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202009ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202009.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202010ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202010.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202011ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202011.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202012ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202012.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202101ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202101.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202102ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202102.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202103ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202103.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\movimentacoes\202104\CAGEDMOV202104ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  saldomovimentacao A100
  cbo2002ocupacao A100
  cpf A100
  categoria A100
  graudeinstrucao A100
  idade A100
  cnpjraiz A100
  cnpjcei A100
  horascontratuais A100
  tempoemprego A100
  racacor A100
  sexo A100
  tipoempregador A100
  tipoestabelecimento A100
  tipomovimentacao A100
  tipodedeficiencia A100
  indtrabintermitente A100
  indtrabparcial A100
  salario A100
  tamestabjan A100
  indicadoraprendiz A100
  fonte A100
  nit A100
  datanascimento A100
  diamovimentacao A100
  dataadmissao A100.
CACHE.
EXECUTE.
DATASET NAME d202104.

DATASET ACTIVATE d202001.
ADD FILES /FILE=*
  /FILE='d202002'
  /FILE='d202003'
  /FILE='d202004'
  /FILE='d202005'
  /FILE='d202006'
  /FILE='d202007'
  /FILE='d202008'
  /FILE='d202009'
  /FILE='d202010'
  /FILE='d202011'
  /FILE='d202012'
  /FILE='d202101'
  /FILE='d202102'
  /FILE='d202103'
  /FILE='d202104'.
EXECUTE.
ALTER TYPE ALL (A=AMIN).

dataset close d202002.
dataset close d202003.
dataset close d202004.
dataset close d202005.
dataset close d202006.
dataset close d202007.
dataset close d202008.
dataset close d202009.
dataset close d202010.
dataset close d202011.
dataset close d202012.
dataset close d202101.
dataset close d202102.
dataset close d202103.
dataset close d202104.

SAVE TRANSLATE /TYPE=ODBC
  /BULKLOADING BATCHSIZE=10000 METHOD=ODBC BINDING=ROW 
  /CONNECT='DSN=DB_CODEPLAN;UID=35866;PWD=7y/F+G(M%v/{,N!R#/+/--;APP=IBM SPSS Products: '+
    'Statistics Common;WSID=320CDL415;DATABASE=DB_CODEPLAN'
  /ENCRYPTED
  /MISSING=RECODE
  /SQL="IF OBJECT_ID('caged_id.caged_mov_202001_atual', 'U') IS NOT NULL DROP TABLE caged_id.caged_mov_202001_atual"
  /SQL='CREATE TABLE caged_id.caged_mov_202001_atual ([competencia] int, [regiao] '+
    'tinyint, [uf] tinyint, [municipio] int, [secao] varchar (1), [subclasse] '+
    'int, [saldomovimentacao] float, [cbo2002ocupacao] int, [cpf] bigint, '+
    '[categoria] smallint, [graudeinstrucao] tinyint, [idade] tinyint, [cnpjraiz] '+
    'bigint, [cnpjcei] bigint, [horascontratuais] tinyint, [tempoemprego] smallint, '+
    '[racacor] tinyint, [sexo] tinyint, [tipoempregador] tinyint, '+
    '[tipoestabelecimento] tinyint, [tipomovimentacao] tinyint, [tipodedeficiencia] '+
    'tinyint, [indtrabintermitente] tinyint, [indtrabparcial] tinyint, [salario] '+
    'float, [tamestabjan] tinyint, [indicadoraprendiz] tinyint, [fonte] tinyint, '+
    '[nit] bigint, [datanascimento] int, [diamovimentacao] tinyint, '+
    '[dataadmissao] int)'
  /REPLACE
  /TABLE='SPSS_TEMP'
  /KEEP=competencia, regiao, uf, municipio, secao, subclasse, saldomovimentacao, cbo2002ocupacao, 
    cpf, categoria, graudeinstrucao, idade, cnpjraiz, cnpjcei, horascontratuais, tempoemprego, racacor, 
    sexo, tipoempregador, tipoestabelecimento, tipomovimentacao, tipodedeficiencia, 
    indtrabintermitente, indtrabparcial, salario, tamestabjan, indicadoraprendiz, fonte, nit, 
    datanascimento, diamovimentacao, dataadmissao
  /SQL='INSERT INTO caged_id.caged_mov_202001_atual ([competencia], [regiao], [uf], '+
    '[municipio], [secao], [subclasse], [saldomovimentacao], [cbo2002ocupacao], [cpf], '+
    '[categoria], [graudeinstrucao], [idade], [cnpjraiz], [cnpjcei], [horascontratuais], '+
    '[tempoemprego], [racacor], [sexo], [tipoempregador], [tipoestabelecimento], '+
    '[tipomovimentacao], [tipodedeficiencia], [indtrabintermitente], [indtrabparcial], [salario], '+
    '[tamestabjan], [indicadoraprendiz], [fonte], [nit], [datanascimento], [diamovimentacao], '+
    '[dataadmissao]) SELECT [competencia], [regiao], [uf], [municipio], [secao], [subclasse], '+
    '[saldomovimentacao], [cbo2002ocupacao], [cpf], [categoria], [graudeinstrucao], [idade], '+
    '[cnpjraiz], [cnpjcei], [horascontratuais], [tempoemprego], [racacor], [sexo], '+
    '[tipoempregador], [tipoestabelecimento], [tipomovimentacao], [tipodedeficiencia], '+
    '[indtrabintermitente], [indtrabparcial], [salario], [tamestabjan], [indicadoraprendiz], '+
    '[fonte], [nit], [datanascimento], [diamovimentacao], [dataadmissao] FROM SPSS_TEMP'
  /SQL='DROP TABLE [SPSS_TEMP]'.

dataset close all.