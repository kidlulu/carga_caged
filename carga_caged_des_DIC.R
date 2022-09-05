rm(list=ls(all=TRUE))
gc()
setwd('D:/Users/35866/Documents/codeplan/analise_caged/carga_caged')
library(RODBC)
library(tidyverse)
dic <- data.table::fread(file = 'Layout Não-identificado Novo Caged Movimentação.txt',
                         encoding = if_else(readr::guess_encoding('Layout Não-identificado Novo Caged Movimentação.txt')[[1,1]]=="ISO-8859-1",'Latin-1','UTF-8'))
x <- data.frame(type=sapply(dic, class),
                nc=unlist(lapply(dic, function(x) max(nchar(x), na.rm = T))),
                tm=as.numeric(unlist(lapply(dic, function(x) max(x, na.rm = T))))) %>%
  # Ajustar os casos em que todas as colunas s?o vazias
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
                coltype=case_when(type=="integer" & tm >= 0 & tm <= 255~"smallint",
                                  TRUE~coltype))
columnTypes <- setNames(as.list(x$coltype),names(dic))
db <- RODBC::odbcConnect("db_codeplan",uid=Sys.getenv("usuario"),pwd=Sys.getenv("senha"))
RODBC::sqlQuery(db,"IF OBJECT_ID('caged.caged_202001_atual_DIC', 'U') IS NOT NULL DROP TABLE caged.caged_202001_atual_DIC")
RODBC::sqlSave(db,dic,'caged.caged_202001_atual_DIC',rownames = T,append = T,varTypes = columnTypes)
rm(list=ls(all=TRUE))
gc()
