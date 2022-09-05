rm(list=ls(all=TRUE))
gc()
setwd('C:/Users/35866/AppData/Local/Temp')
library(RODBC)
library(tidyverse)
download.file('ftp://ftp.mtps.gov.br/pdet/microdados/NOVO%20CAGED/2020/202004/CAGEDEXC202004.7z','exc.7z', mode="wb")
system('"c:/Program Files/7-Zip/7z.exe" e -y exc.7z')
mov <- data.table::fread(file = 'CAGEDEXC202004.txt',
                         encoding = if_else(readr::guess_encoding('CAGEDEXC202004.txt')[[1,1]]=="ISO-8859-1",'Latin-1','UTF-8')) %>% 
  dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse","saldo","cbo2002ocupacao","categoria",
                            "graudeinstrucao","idade","horascontratuais","racacor","sexo","tipoempregador","tipoestabelecimento",
                            "tipomovimentacao","tipodedeficiencia","indtrabintermitente","indtrabparcial","salario","tamestabjan",
                            "indicadoraprendiz","origemdainformacao","competenciadec","competenciaexc","indicadordeexclusao",
                            "indicadordeforadoprazo","unidadesalariocodigo","valorsalariofixo")))
x <- data.frame(type=sapply(mov, class),
                nc=unlist(lapply(mov, function(x) max(nchar(x), na.rm = T))),
                tm=as.numeric(unlist(lapply(mov, function(x) max(x, na.rm = T))))) %>%
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
columnTypes <- setNames(as.list(x$coltype),names(mov))
db <- RODBC::odbcConnect("db_codeplan",uid=Sys.getenv("usuario"),pwd=Sys.getenv("senha"))
RODBC::sqlQuery(db,"IF OBJECT_ID('caged.tmp', 'U') IS NOT NULL DROP TABLE caged.tmp")

#2020
#4:12
for (y in 2020){
  print(paste0('ano: ',y))
  for (m in 4:12){
    print(paste0('ano: ',y, ' mês: ', m))
    ftp <- if_else(m<10,paste0('ftp://ftp.mtps.gov.br/pdet/microdados/NOVO%20CAGED/',y,'/',y,'0',m,'/'),
                   paste0('ftp://ftp.mtps.gov.br/pdet/microdados/NOVO%20CAGED/',y,'/',y,m,'/'))
    print(ftp)
    download.file(url = if_else(m<10,
                                paste0(ftp,'CAGEDEXC',y,'0',m,'.7z'),
                                paste0(ftp,'CAGEDEXC',y,m,'.7z')),
                  destfile = 'exc.7z',
                  mode = "wb")
    system('"c:/Program Files/7-Zip/7z.exe" e -y exc.7z')
    mov <- data.table::fread(file = if_else(m<10,
                                            paste0('CAGEDEXC',y,'0',m,'.txt'),
                                            paste0('CAGEDEXC',y,m,'.txt')),
                             encoding = if_else(readr::guess_encoding(if_else(m<10,
                                                                              paste0('CAGEDEXC',y,'0',m,'.txt'),
                                                                              paste0('CAGEDEXC',y,m,'.txt')))[[1,1]]=="ISO-8859-1",'Latin-1','UTF-8')) %>% 
      dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse","saldo","cbo2002ocupacao","categoria",
                                "graudeinstrucao","idade","horascontratuais","racacor","sexo","tipoempregador","tipoestabelecimento",
                                "tipomovimentacao","tipodedeficiencia","indtrabintermitente","indtrabparcial","salario","tamestabjan",
                                "indicadoraprendiz","origemdainformacao","competenciadec","competenciaexc","indicadordeexclusao",
                                "indicadordeforadoprazo","unidadesalariocodigo","valorsalariofixo")))
    db <- RODBC::odbcConnect("db_codeplan",uid=Sys.getenv("usuario"),pwd=Sys.getenv("senha"))
    RODBC::sqlSave(db,mov,'caged.tmp',rownames = F,append = T,varTypes = columnTypes)
  }
}

#2021:2022
#1:12
for (y in 2021:2022){
  print(paste0('ano: ',y))
  for (m in 1:12){
    print(paste0('ano: ',y, ' mês', m))
    ftp <- if_else(m<10,paste0('ftp://ftp.mtps.gov.br/pdet/microdados/NOVO%20CAGED/',y,'/',y,'0',m,'/'),
                   paste0('ftp://ftp.mtps.gov.br/pdet/microdados/NOVO%20CAGED/',y,'/',y,m,'/'))
    print(ftp)
    download.file(url = if_else(m<10,
                                paste0(ftp,'CAGEDEXC',y,'0',m,'.7z'),
                                paste0(ftp,'CAGEDEXC',y,m,'.7z')),
                  destfile = 'exc.7z',
                  mode = "wb")
    system('"c:/Program Files/7-Zip/7z.exe" e -y exc.7z')
    mov <- data.table::fread(file = if_else(m<10,
                                            paste0('CAGEDEXC',y,'0',m,'.txt'),
                                            paste0('CAGEDEXC',y,m,'.txt')),
                             encoding = if_else(readr::guess_encoding(if_else(m<10,
                                                                              paste0('CAGEDEXC',y,'0',m,'.txt'),
                                                                              paste0('CAGEDEXC',y,m,'.txt')))[[1,1]]=="ISO-8859-1",'Latin-1','UTF-8')) %>% 
      dplyr::rename_all(list(~c("competencia","regiao","uf","municipio","secao","subclasse","saldo","cbo2002ocupacao","categoria",
                                "graudeinstrucao","idade","horascontratuais","racacor","sexo","tipoempregador","tipoestabelecimento",
                                "tipomovimentacao","tipodedeficiencia","indtrabintermitente","indtrabparcial","salario","tamestabjan",
                                "indicadoraprendiz","origemdainformacao","competenciadec","competenciaexc","indicadordeexclusao",
                                "indicadordeforadoprazo","unidadesalariocodigo","valorsalariofixo")))
    db <- RODBC::odbcConnect("db_codeplan",uid=Sys.getenv("usuario"),pwd=Sys.getenv("senha"))
    RODBC::sqlSave(db,mov,'caged.tmp',rownames = F,append = T,varTypes = columnTypes)
  }
}

rm(list=ls(all=TRUE))
gc()