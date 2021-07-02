#Orientações para carga dos microdados de estabelecimentos
#1 - Em um terminal linux, acesse a pasta onde serão salvos os microdados (cd /mnt/d/carga)
#2 - Remova a pasta existente  (rm -R ftp.mtps.gov.br/)
#2 - Execute o comando wget -r -l0 --no-parent -A.7z ftp://ftp.mtps.gov.br/pdet/microdados/NOVO%20CAGED/Estabelecimentos/2021/Janeiro/
#3 - Acesse a estrutura de pastas baixadas. Observe se há alguma pasta/arquivo com caracter não identificado. Se houver corrija
#4 - Atualize a programação abaixo para o último mês e execute

library(DBI)
library(odbc)
library(tidyverse)
rm(list = ls())

keyring::key_set(service = "teste", username = "35866")

db <- DBI::dbConnect(odbc(),'db_codeplan', 
                     uid = keyring::key_list('teste')[1,2], 
                     pwd = keyring::key_get('teste', username =  '35866'))

dbExecute(db,"ALTER USER [35866] WITH DEFAULT_SCHEMA = [caged]")

DBI::dbGetQuery(db,"DROP INDEX IF EXISTS [idx_competencia] ON [caged_est_202001_atual]")
DBI::dbGetQuery(db,"DROP INDEX IF EXISTS [idx_uf] ON [caged_est_202001_atual]")
DBI::dbGetQuery(db,"DROP INDEX IF EXISTS [idx_municipio] ON [caged_est_202001_atual]")

DBI::dbGetQuery(db,"DELETE FROM [caged_est_202001_atual] WHERE competencia > 202003")

getwd()
setwd('D:\\carga\\caged\\202104\\')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202004.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202005.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202006.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202007.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202008.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202009.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202010.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202011.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202012.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202101.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202102.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202103.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDESTAB202104.7z')

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

CAGEDESTAB <- data.table::fread('CAGEDESTAB202012.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202012.txt')[[1,1]]) %>%
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                            "subclasse","admitidos","desligados","fonte_desl",
                            "saldo","tipoempregador","tipoestabelecimento",
                            "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202101.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202101.txt')[[1,1]]) %>%
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                            "subclasse","admitidos","desligados","fonte_desl",
                            "saldo","tipoempregador","tipoestabelecimento",
                            "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202102.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202102.txt')[[1,1]]) %>%
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                            "subclasse","admitidos","desligados","fonte_desl",
                            "saldo","tipoempregador","tipoestabelecimento",
                            "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202103.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202103.txt')[[1,1]]) %>%
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                            "subclasse","admitidos","desligados","fonte_desl",
                            "saldo","tipoempregador","tipoestabelecimento",
                            "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)


DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)

CAGEDESTAB <- data.table::fread('CAGEDESTAB202104.txt',
                                encoding=readr::guess_encoding('CAGEDESTAB202104.txt')[[1,1]]) %>%
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao",
                            "subclasse","admitidos","desligados","fonte_desl",
                            "saldo","tipoempregador","tipoestabelecimento",
                            "tamestabjan")))

DBI::dbWriteTable(db,"caged_est_202001_atual",CAGEDESTAB,append = TRUE, field.types = columnTypes)


DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_competencia] ON [caged_est_202001_atual]
                    ([competencia] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_uf] ON [caged_est_202001_atual]
                    ([uf] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_municipio] ON [caged_est_202001_atual]
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

shell('del *.txt')











DBI::dbGetQuery(db,"DROP INDEX IF EXISTS [idx_competencia] ON [caged_mov_202001_atual]")
DBI::dbGetQuery(db,"DROP INDEX IF EXISTS [idx_uf] ON [caged_mov_202001_atual]")
DBI::dbGetQuery(db,"DROP INDEX IF EXISTS [idx_municipio] ON [caged_mov_202001_atual]")

DBI::dbGetQuery(db,"DELETE FROM [caged_mov_202001_atual] WHERE competencia > 202003")

shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202004.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202005.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202006.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202007.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202008.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202009.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202010.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202011.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202012.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202101.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202102.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202003.7z')
shell('"C:\\Program Files\\7-Zip\\7z.exe" e -y CAGEDMOV202104.7z')

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

CAGEDMOV <- data.table::fread('CAGEDMOV202012.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202012.txt')[[1,1]]) %>% 
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                            "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                            "idade","horascontratuais","racacor","sexo","tipoempregador",
                            "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                            "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                            "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202101.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202101.txt')[[1,1]]) %>% 
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                            "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                            "idade","horascontratuais","racacor","sexo","tipoempregador",
                            "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                            "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                            "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202102.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202102.txt')[[1,1]]) %>% 
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                            "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                            "idade","horascontratuais","racacor","sexo","tipoempregador",
                            "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                            "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                            "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202103.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202103.txt')[[1,1]]) %>% 
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                            "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                            "idade","horascontratuais","racacor","sexo","tipoempregador",
                            "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                            "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                            "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

CAGEDMOV <- data.table::fread('CAGEDMOV202104.txt',
                              encoding=readr::guess_encoding('CAGEDMOV202104.txt')[[1,1]]) %>% 
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse",
                            "saldo","cbo2002ocupacao","categoria","graudeinstrucao",
                            "idade","horascontratuais","racacor","sexo","tipoempregador",
                            "tipoestabelecimento","tipomovimentacao","tipodedeficiencia",
                            "indtrabintermitente","indtrabparcial","salario","tamestabjan",
                            "indicadoraprendiz","fonte")))

DBI::dbWriteTable(db,"caged_mov_202001_atual",CAGEDMOV,append = TRUE, field.types = columnTypes)

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_competencia] ON [caged_mov_202001_atual]
                    ([competencia] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_uf] ON [caged_mov_202001_atual]
                    ([uf] ASC
                    )WITH (PAD_INDEX = OFF, 
                           STATISTICS_NORECOMPUTE = OFF, 
                    	   SORT_IN_TEMPDB = OFF, 
                    	   DROP_EXISTING = OFF, 
                    	   ONLINE = OFF, 
                    	   ALLOW_ROW_LOCKS = ON, 
                    	   ALLOW_PAGE_LOCKS = ON) 
                    ON [PRIMARY]")

DBI::dbGetQuery(db,"CREATE NONCLUSTERED INDEX [idx_municipio] ON [caged_mov_202001_atual]
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

shell('del *.txt')
