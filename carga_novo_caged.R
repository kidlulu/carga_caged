getwd()
setwd('D:/carga/ftp.mtps.gov.br/pdet/microdados/NOVO CAGED/Estabelecimentos/Junho/')
library(DBI)
library(odbc)
library(tidyverse)
rm(list = ls())

keyring::key_set(service = "teste", username = "35866")

db <- DBI::dbConnect(odbc(),'db_codeplan', 
                     uid = keyring::key_list('teste')[1,2], 
                     pwd = keyring::key_get('teste', username =  '35866'))

CAGEDESTAB202001 <- data.table::fread('CAGEDESTAB202001.txt',
                                      encoding=readr::guess_encoding('CAGEDESTAB202001.txt')[[1,1]])

CAGEDESTAB202002 <- data.table::fread('CAGEDESTAB202002.txt',
                                      encoding=readr::guess_encoding('CAGEDESTAB202002.txt')[[1,1]])

CAGEDESTAB202003 <- data.table::fread('CAGEDESTAB202003.txt',
                                      encoding=readr::guess_encoding('CAGEDESTAB202003.txt')[[1,1]])

CAGEDESTAB202004 <- data.table::fread('CAGEDESTAB202004.txt',
                                      encoding=readr::guess_encoding('CAGEDESTAB202004.txt')[[1,1]])

CAGEDESTAB202005 <- data.table::fread('CAGEDESTAB202005.txt',
                                      encoding=readr::guess_encoding('CAGEDESTAB202005.txt')[[1,1]])

CAGEDESTAB202006 <- data.table::fread('CAGEDESTAB202006.txt',
                                      encoding=readr::guess_encoding('CAGEDESTAB202005.txt')[[1,1]])

CAGEDESTAB <- dplyr::bind_rows(CAGEDESTAB202001,
                               CAGEDESTAB202002,
                               CAGEDESTAB202003,
                               CAGEDESTAB202004,
                               CAGEDESTAB202005,
                               CAGEDESTAB202006) %>% 
              dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                                        "subclasse","admitidos","desligados","fonte_desl",
                                        "saldo","tipoempregador","tipoestabelecimento",
                                        "tamestabjan")))


rm(CAGEDESTAB202001,
   CAGEDESTAB202002,
   CAGEDESTAB202003,
   CAGEDESTAB202004,
   CAGEDESTAB202005,
   CAGEDESTAB202006)


x <- data.frame(type=sapply(CAGEDESTAB, class),
                nc=unlist(lapply(CAGEDESTAB, function(x) max(nchar(x), na.rm = T))),
                tm=as.numeric(unlist(lapply(CAGEDESTAB, function(x) max(x, na.rm = T))))) %>%
  # Ajustar os casos em que todas as colunas são vazias
  dplyr::mutate(nc=ifelse(nc==-Inf,2,nc),
                # Determinar o tamanho dos campos VARCHAR e fazer o de para dos demais campos
                coltype=case_when(type=="character"~paste0("VARCHAR(",nc,")"),
                                  type=="numeric"~'float',
                                  type %in% c("integer","integer64")~"bigint",
                                  TRUE~'VARCHAR(1)'),
                coltype=case_when(type=="integer" & tm >= -2^31 & tm <= 2^31-1~"int",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= -2^15 & tm <= 2^15-1~"smallint",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= 0 & tm <= 255~"tinyint",
                                  TRUE~coltype))

columnTypes <- setNames(as.list(x$coltype),names(CAGEDESTAB))

dbExecute(db,"ALTER USER [35866] WITH DEFAULT_SCHEMA = [caged]")

DBI::dbGetQuery(db,"IF OBJECT_ID('caged.caged_est_202001_atual', 'U') IS NOT NULL DROP TABLE caged.caged_est_202001_atual")

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_competencia] ON [caged].[caged_est_202001_atual]
                    ([competencia] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_uf] ON [caged].[caged_est_202001_atual]
                    ([uf] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_municipio] ON [caged].[caged_est_202001_atual]
                    ([municipio] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")









rm(CAGEDESTAB,columnTypes,x)

setwd('D:/carga/ftp.mtps.gov.br/pdet/microdados/NOVO CAGED/Movimentacoes/2020/Junho/')

getwd()

CAGEDMOV202001 <- data.table::fread('CAGEDMOV202001.txt',
                                    encoding=readr::guess_encoding('CAGEDMOV202001.txt')[[1,1]])

CAGEDMOV202002 <- data.table::fread('CAGEDMOV202002.txt',
                                    encoding=readr::guess_encoding('CAGEDMOV202001.txt')[[1,1]])

CAGEDMOV202003 <- data.table::fread('CAGEDMOV202003.txt',
                                    encoding=readr::guess_encoding('CAGEDMOV202001.txt')[[1,1]])

CAGEDMOV202004 <- data.table::fread('CAGEDMOV202004.txt',
                                    encoding=readr::guess_encoding('CAGEDMOV202001.txt')[[1,1]])

CAGEDMOV202005 <- data.table::fread('CAGEDMOV202005.txt',
                                    encoding=readr::guess_encoding('CAGEDMOV202001.txt')[[1,1]])

CAGEDMOV202006 <- data.table::fread('CAGEDMOV202006.txt',
                                    encoding=readr::guess_encoding('CAGEDMOV202001.txt')[[1,1]])

CAGEDMOV <- dplyr::bind_rows(CAGEDMOV202001,
                             CAGEDMOV202002,
                             CAGEDMOV202003,
                             CAGEDMOV202004,
                             CAGEDMOV202005,
                             CAGEDMOV202006) %>% 
            dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                                      "saldomovimentacao","cbo2002ocupacao","categoria","graudeinstrucao",
                                      "idade","horascontratuais","racacor","sexo","tipoempregador",
                                      "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                                      "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                                      "indicadoraprendiz","fonte")))

rm(CAGEDMOV202001,
   CAGEDMOV202002,
   CAGEDMOV202003,
   CAGEDMOV202004,
   CAGEDMOV202005,
   CAGEDMOV202006)

ftable(CAGEDMOV$fonte)

x <- data.frame(type=sapply(CAGEDMOV, class),
                nc=unlist(lapply(CAGEDMOV, function(x) max(nchar(x), na.rm = T))),
                tm=as.numeric(unlist(lapply(CAGEDMOV, function(x) max(x, na.rm = T))))) %>%
  # Ajustar os casos em que todas as colunas são vazias
  dplyr::mutate(nc=ifelse(nc==-Inf,2,nc),
                # Determinar o tamanho dos campos VARCHAR e fazer o de para dos demais campos
                coltype=case_when(type=="character"~paste0("VARCHAR(",nc,")"),
                                  type=="numeric"~'float',
                                  type %in% c("integer","integer64")~"bigint",
                                  TRUE~'VARCHAR(1)'),
                coltype=case_when(type=="integer" & tm >= -2^31 & tm <= 2^31-1~"int",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= -2^15 & tm <= 2^15-1~"smallint",
                                  TRUE~coltype),
                coltype=case_when(type=="integer" & tm >= 0 & tm <= 255~"tinyint",
                                  TRUE~coltype))

columnTypes <- setNames(as.list(x$coltype),names(CAGEDMOV))

columnTypes$saldomovimentacao <- "float"

dbExecute(db,"ALTER USER [35866] WITH DEFAULT_SCHEMA = [caged]")

DBI::dbGetQuery(db,"IF OBJECT_ID('caged.caged_mov_202001_atual', 'U') IS NOT NULL DROP TABLE caged.caged_mov_202001_atual")

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_competencia] ON [caged].[caged_mov_202001_atual]
                    ([competencia] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_uf] ON [caged].[caged_mov_202001_atual]
                    ([uf] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_municipio] ON [caged].[caged_mov_202001_atual]
                    ([municipio] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

rm(list = ls())
