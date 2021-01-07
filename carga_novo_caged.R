#Orientações para carga
#1 - Em um terminal linux, acesse a pasta onde serão salvos os microdados (cd /mnt/d/carga)
#2 - Execute o comando wget -r -l0 --no-parent -A.7z ftp://ftp.mtps.gov.br/pdet/microdados/NOVO%20CAGED/
#3 - Acesse a estrutura de pastas baixadas. Observe se há alguma pasta/arquivo com caracter não identificado. Se houver corrija
#4 - Atualize a programação abaixo para o último mês e execute

getwd()
setwd('D:/carga/ftp.mtps.gov.br/pdet/microdados/NOVO CAGED/Estabelecimentos/Novembro/')
library(DBI)
library(odbc)
library(tidyverse)
rm(list = ls())

keyring::key_set(service = "teste", username = "35866")

db <- DBI::dbConnect(odbc(),'db_codeplan', 
                     uid = keyring::key_list('teste')[1,2], 
                     pwd = keyring::key_get('teste', username =  '35866'))

CAGEDESTAB <- data.table::fread('CAGEDESTAB202001.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202001.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

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

columnTypes$saldo <- "float"

dbExecute(db,"ALTER USER [35866] WITH DEFAULT_SCHEMA = [caged]")

DBI::dbGetQuery(db,"IF OBJECT_ID('caged.caged_est_202001_atual', 'U') IS NOT NULL DROP TABLE caged.caged_est_202001_atual")

DBI::dbCreateTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202002.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202002.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202003.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202003.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202004.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202004.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202005.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202005.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202006.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202006.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202007.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202007.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202008.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202008.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202009.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202009.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202010.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202010.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202011.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202011.txt')[[1,1]]) %>%
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                             "subclasse","admitidos","desligados","fonte_desl",
                             "saldo","tipoempregador","tipoestabelecimento",
                             "tamestabjan")))

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

rm(CAGEDESTAB)

























setwd('D:/carga/ftp.mtps.gov.br/pdet/microdados/NOVO CAGED/Movimentacoes/2020/Novembro/')

getwd()

CAGEDMOV <- data.table::fread('CAGEDMOV202001.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202001.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

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

columnTypes$saldo <- "float"

db <- DBI::dbConnect(odbc(),'db_codeplan', 
                     uid = keyring::key_list('teste')[1,2], 
                     pwd = keyring::key_get('teste', username =  '35866'))

dbExecute(db,"ALTER USER [35866] WITH DEFAULT_SCHEMA = [caged]")

DBI::dbGetQuery(db,"IF OBJECT_ID('caged.caged_mov_202001_atual', 'U') IS NOT NULL DROP TABLE caged.caged_mov_202001_atual")

DBI::dbCreateTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202002.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202002.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202003.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202003.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202004.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202004.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202005.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202005.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202006.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202006.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202007.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202007.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202008.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202008.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

CAGEDMOV <- data.table::fread('CAGEDMOV202009.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202009.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202010.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202010.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202011.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202011.txt')[[1,1]]) %>% 
   dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                             "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                             "idade","horascontratuais","racacor","sexo","tipoempregador",
                             "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                             "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                             "indicadoraprendiz","fonte")))

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
