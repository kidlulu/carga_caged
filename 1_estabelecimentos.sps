* Encoding: windows-1252.
dataset close all.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202104\CAGEDESTAB202104ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202104.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202103\CAGEDESTAB202103ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202103.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202102\CAGEDESTAB202102ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202102.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202101\CAGEDESTAB202101ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202101.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202012\CAGEDESTAB202012ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202012.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202011\CAGEDESTAB202011ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202011.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202010\CAGEDESTAB202010ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202010.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202009\CAGEDESTAB202009ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202009.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202008\CAGEDESTAB202008ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202008.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202007\CAGEDESTAB202007ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202007.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202006\CAGEDESTAB202006ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202006.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202005\CAGEDESTAB202005ID.txt"
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
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100
  cnpjraiz A100
  cnpjcei A100
  tipoempregador A100
  tipoestabelecimento A100
  tamestabjan A100.
CACHE.
EXECUTE.
dataset name b202005.

GET DATA  /TYPE=TXT
  /FILE="D:\carga\CAGED_ID\estabelecimentos\202001ate04\acumulado202004ID.txt"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  competencia A100
  cnpjraiz A100
  cnpjcei A100
  regiao A100
  uf A100
  municipio A100
  secao A100
  subclasse A100
  admitidos A100
  desligados A100
  fonte_desl A100
  saldomovimentacao A100.
CACHE.
EXECUTE.
dataset name b202004.


DATASET ACTIVATE b202104.
ADD FILES /FILE=*
  /FILE='b202103'
  /FILE='b202102'
  /FILE='b202102'
  /FILE='b202012'
  /FILE='b202011'
  /FILE='b202010'
  /FILE='b202009'
  /FILE='b202008'
  /FILE='b202007'
  /FILE='b202006'
  /FILE='b202005'
  /FILE='b202004'.
EXECUTE.
ALTER TYPE ALL (A=AMIN).
dataset close b202103.
dataset close b202102.
dataset close b202101.
dataset close b202012.
dataset close b202011.
dataset close b202010.
dataset close b202009.
dataset close b202008.
dataset close b202007.
dataset close b202006.
dataset close b202005.
dataset close b202004.

SAVE TRANSLATE /TYPE=ODBC
  /BULKLOADING BATCHSIZE=10000 METHOD=ODBC BINDING=ROW 
  /CONNECT='DSN=DB_CODEPLAN;UID=35866;PWD=7z,v(K$M&J,G/~!m#/(#!-;APP=IBM SPSS Products: '+
    'Statistics Common;WSID=320CDL415;DATABASE=DB_CODEPLAN'
  /ENCRYPTED
  /MISSING=RECODE
  /SQL="IF OBJECT_ID('caged_id.caged_est_202001_atual', 'U') IS NOT NULL DROP TABLE caged_id.caged_est_202001_atual"
  /SQL='CREATE TABLE caged_id.caged_est_202001_atual ([competencia] int , [regiao] tinyint , '+
    '[uf] tinyint , [municipio] int , [secao] nchar (1), [subclasse] int , [admitidos] smallint , '+
    '[desligados] smallint , [fonte_desl] tinyint , [saldomovimentacao] float , [cnpjraiz] bigint '+
    ', [cnpjcei] bigint , [tipoempregador] tinyint , [tipoestabelecimento] tinyint , [tamestabjan] '+
    'tinyint )'
  /REPLACE
  /TABLE='SPSS_TEMP'
  /KEEP=competencia, regiao, uf, municipio, secao, subclasse, admitidos, desligados, fonte_desl, 
    saldomovimentacao, cnpjraiz, cnpjcei, tipoempregador, tipoestabelecimento, tamestabjan
  /SQL='INSERT INTO caged_id.caged_est_202001_atual ([competencia], [regiao], [uf], '+
    '[municipio], [secao], [subclasse], [admitidos], [desligados], [fonte_desl], '+
    '[saldomovimentacao], [cnpjraiz], [cnpjcei], [tipoempregador], [tipoestabelecimento], '+
    '[tamestabjan]) SELECT [competencia], [regiao], [uf], [municipio], [secao], [subclasse], '+
    '[admitidos], [desligados], [fonte_desl], [saldomovimentacao], [cnpjraiz], [cnpjcei], '+
    '[tipoempregador], [tipoestabelecimento], [tamestabjan] FROM SPSS_TEMP'
  /SQL='DROP TABLE [SPSS_TEMP]'.

dataset close all.

