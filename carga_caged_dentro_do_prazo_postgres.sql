--DROP TABLE IF EXISTS caged.tmp;


CREATE TABLE caged.tmp
(
  admitidosdesligados text,
  competenciadeclarada text,
  municipio text,
  anodeclarado text,
  cbo2002ocupacao text,
  cnae10classe text,
  cnae20classe text,
  cnae20subclas text,
  faixaempriniciojan text,
  grauinstrucao text,
  qtdhoracontrat text,
  ibgesubsetor text,
  idade text,
  indaprendiz text,
  indportadordefic text,
  racacor text,
  salariomensal text,
  saldomov text,
  sexo text,
  tempoemprego text,
  tipoestab text,
  tipodefic text,
  tipomovdesagregado text,
  uf text,
  bairrossp text,
  bairrosfortaleza text,
  bairrosrj text,
  distritossp text,
  regioesadmdf text,
  mesorregi text,
  microrregi text,
  regiaoadmrj text,
  regiaoadmsp text,
  regiaocorede text,
  regiaocorede04 text,
  regiaogovsp text,
  regiaosenacpr text,
  regiaosenaipr text,
  regiaosenaisp text,
  subregiaosenaipr text
) 
WITH (
  OIDS = FALSE
)

TABLESPACE ts_casa;

COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122007.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122008.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122009.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122010.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122011.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGED_062012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122012.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122013.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122014.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST092015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST102015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122015.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122016.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122017.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012018.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022018.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032018.txt' USING DELIMITERS ';';;
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042018.txt' USING DELIMITERS ';';;


--DROP TABLE IF EXISTS caged.caged_des_200701_atual;

SELECT
   CAST(admitidosdesligados AS INT) AS admitidosdesligados,
   CAST(competenciadeclarada AS INT) AS competenciadeclarada,
   CAST(municipio AS INT) AS municipio,
   CAST(anodeclarado AS INT) AS anodeclarado,
   cbo2002ocupacao AS cbo2002ocupacao,
   cnae10classe AS cnae10classe,
   cnae20classe AS cnae20classe,
   cnae20subclas AS cnae20subclas,
   CAST(faixaempriniciojan AS INT) AS faixaempriniciojan,
   case when substring(grauinstrucao,1,1) = '{' then 99 else CAST(grauinstrucao AS INT) end AS grauinstrucao,
   CAST(qtdhoracontrat AS INT) AS qtdhoracontrat,
   CAST(ibgesubsetor AS INT) AS ibgesubsetor,
   CAST(idade AS INT) AS idade,
   CAST(indaprendiz AS INT) AS indaprendiz,
   CAST(indportadordefic AS INT) AS indportadordefic,
   case when substring(racacor,1,1) = '{' then 99 else CAST(racacor AS INT) end AS racacor,
   CAST(REPLACE(salariomensal,',','.') AS DOUBLE PRECISION) AS salariomensal,
   case 
   when CAST(competenciadeclarada AS INT) between 	201901	 and 	201912	 then 	998
   when CAST(competenciadeclarada AS INT) between 	201801	 and 	201812	 then 	954
   when CAST(competenciadeclarada AS INT) between 	201701	 and 	201712	 then 	937
   when CAST(competenciadeclarada AS INT) between 	201601	 and 	201612	 then 	880
   when CAST(competenciadeclarada AS INT) between 	201501	 and 	201512	 then 	788
   when CAST(competenciadeclarada AS INT) between 	201401	 and 	201412	 then 	724
   when CAST(competenciadeclarada AS INT) between 	201301	 and 	201312	 then 	678
   when CAST(competenciadeclarada AS INT) between 	201201	 and 	201212	 then 	622
   when CAST(competenciadeclarada AS INT) between 	201103	 and 	201112	 then 	545
   when CAST(competenciadeclarada AS INT) between 	201101	 and 	201102	 then 	540
   when CAST(competenciadeclarada AS INT) between 	201001	 and 	201012	 then 	510
   when CAST(competenciadeclarada AS INT) between 	200902	 and 	200912	 then 	465
   when CAST(competenciadeclarada AS INT) between 	200803	 and 	200901	 then 	415
   when CAST(competenciadeclarada AS INT) between 	200704	 and 	200802	 then 	380
   when CAST(competenciadeclarada AS INT) between 	200604	 and 	200703	 then 	350
   end as vl_sm,
   case 
   when CAST(competenciadeclarada AS INT) between 	201901	 and 	201912	 then 	33.27
   when CAST(competenciadeclarada AS INT) between 	201801	 and 	201812	 then 	31.80
   when CAST(competenciadeclarada AS INT) between 	201701	 and 	201712	 then 	31.23
   when CAST(competenciadeclarada AS INT) between 	201601	 and 	201612	 then 	29.33
   when CAST(competenciadeclarada AS INT) between 	201501	 and 	201512	 then 	26.27
   when CAST(competenciadeclarada AS INT) between 	201401	 and 	201412	 then 	24.13
   when CAST(competenciadeclarada AS INT) between 	201301	 and 	201312	 then 	22.60
   when CAST(competenciadeclarada AS INT) between 	201201	 and 	201212	 then 	20.73
   when CAST(competenciadeclarada AS INT) between 	201103	 and 	201112	 then 	18.17
   when CAST(competenciadeclarada AS INT) between 	201101	 and 	201102	 then 	18.00
   when CAST(competenciadeclarada AS INT) between 	201001	 and 	201012	 then 	17.00
   when CAST(competenciadeclarada AS INT) between 	200902	 and 	200912	 then 	15.50
   when CAST(competenciadeclarada AS INT) between 	200803	 and 	200901	 then 	13.83
   when CAST(competenciadeclarada AS INT) between 	200704	 and 	200802	 then 	12.67
   when CAST(competenciadeclarada AS INT) between 	200604	 and 	200703	 then 	11.67
   end as vl_diario,
   case 
   when CAST(competenciadeclarada AS INT) between 	201901	 and 	201912	 then 	4.54
   when CAST(competenciadeclarada AS INT) between 	201801	 and 	201812	 then 	4.34
   when CAST(competenciadeclarada AS INT) between 	201701	 and 	201712	 then 	4.26
   when CAST(competenciadeclarada AS INT) between 	201601	 and 	201612	 then 	4.00
   when CAST(competenciadeclarada AS INT) between 	201501	 and 	201512	 then 	3.58
   when CAST(competenciadeclarada AS INT) between 	201401	 and 	201412	 then 	3.29
   when CAST(competenciadeclarada AS INT) between 	201301	 and 	201312	 then 	3.08
   when CAST(competenciadeclarada AS INT) between 	201201	 and 	201212	 then 	2.83
   when CAST(competenciadeclarada AS INT) between 	201103	 and 	201112	 then 	2.48
   when CAST(competenciadeclarada AS INT) between 	201101	 and 	201102	 then 	2.45
   when CAST(competenciadeclarada AS INT) between 	201001	 and 	201012	 then 	2.32
   when CAST(competenciadeclarada AS INT) between 	200902	 and 	200912	 then 	2.11
   when CAST(competenciadeclarada AS INT) between 	200803	 and 	200901	 then 	1.89
   when CAST(competenciadeclarada AS INT) between 	200704	 and 	200802	 then 	1.73
   when CAST(competenciadeclarada AS INT) between 	200604	 and 	200703	 then 	1.59
   end as vl_hora,
   CAST(saldomov AS INT) AS saldomov,
   CAST(sexo AS INT) AS sexo,
   case when substring(tempoemprego,1,1) = '*' then 9999 else CAST(REPLACE(tempoemprego,',','.') AS DOUBLE PRECISION) end AS tempoemprego,
   CAST(tipoestab AS INT) AS tipoestab,
   case when substring(tipodefic,1,1) = '{' then 99 else CAST(tipodefic AS INT) end AS tipodefic,
   CAST(tipomovdesagregado AS INT) AS tipomovdesagregado,
   case when substring(uf,1,1) = '{' then 99 else CAST(REPLACE(uf,'DF','53') AS INT) end AS uf,
   case when substring(regioesadmdf,1,1) = '{' then 9999 else CAST(regioesadmdf AS INT) end AS regioesadmdf,
   case
     when replace(ibgesubsetor,' ','') = '1' then 'Extrativa mineral'
     when replace(ibgesubsetor,' ','') = '2' then 'Indústria de produtos minerais nao metálicos'
     when replace(ibgesubsetor,' ','') = '3' then 'Indústria metalúrgica'
     when replace(ibgesubsetor,' ','') = '4' then 'Indústria mecânica'
     when replace(ibgesubsetor,' ','') = '5' then 'Indústria do material elétrico e de comunicaçoe'
     when replace(ibgesubsetor,' ','') = '6' then 'Indústria do material de transporte'
     when replace(ibgesubsetor,' ','') = '7' then 'Indústria da madeira e do mobiliário'
     when replace(ibgesubsetor,' ','') = '8' then 'Indústria do papel, papelao, editorial e gráfica'
     when replace(ibgesubsetor,' ','') = '9' then 'Ind. da borracha, fumo, couros, peles, similares,'
     when replace(ibgesubsetor,' ','') = '10' then 'Ind. química de produtos farmacêuticos, veterin'
     when replace(ibgesubsetor,' ','') = '11' then 'Indústria têxtil do vestuário e artefatos de te'
     when replace(ibgesubsetor,' ','') = '12' then 'Indústria de calçados'
     when replace(ibgesubsetor,' ','') = '13' then 'Indústria de produtos alimentícios, bebidas e á'
     when replace(ibgesubsetor,' ','') = '14' then 'Serviços industriais de utilidade pública'
     when replace(ibgesubsetor,' ','') = '15' then 'Construçao civil'
     when replace(ibgesubsetor,' ','') = '16' then 'Comércio varejista'
     when replace(ibgesubsetor,' ','') = '17' then 'Comércio atacadista'
     when replace(ibgesubsetor,' ','') = '18' then 'Instituiçoes de crédito, seguros e capitalizaça'
     when replace(ibgesubsetor,' ','') = '19' then 'Com. e administraçao de imóveis, valores mobili'
     when replace(ibgesubsetor,' ','') = '20' then 'Transportes e comunicaçoes'
     when replace(ibgesubsetor,' ','') = '21' then 'Serv. de alojamento, alimentaçao, reparaçao, man'
     when replace(ibgesubsetor,' ','') = '22' then 'Serviços médicos, odontológicos e veterinários'
     when replace(ibgesubsetor,' ','') = '23' then 'Ensino'
     when replace(ibgesubsetor,' ','') = '24' then 'Administraçao pública direta e autárquica'
     when replace(ibgesubsetor,' ','') = '25' then 'Agricultura, silvicultura, criaçao de animais, ex'
  end as ibgesubsetordesc,
  cast(null as int) as indtrabparcial,
  cast(null as int) as indtrabintermitente
into caged.caged_des_200701_atual
FROM caged.tmp
where SUBSTRING(municipio,1,2) = '53';

--aqui

DROP TABLE IF EXISTS caged.tmp;

create table caged.tmp
(
  admitidosdesligados text,
  competenciadeclarada text,
  municipio text,
  anodeclarado text,
  cbo2002ocupacao text,
  cnae10classe text,
  cnae20classe text,
  cnae20subclas text,
  faixaempriniciojan text,
  grauinstrucao text,
  qtdhoracontrat text,
  ibgesubsetor text,
  idade text,
  indaprendiz text,
  indportadordefic text,
  racacor text,
  salariomensal text,
  saldomov text,
  sexo text,
  tempoemprego text,
  tipoestab text,
  tipodefic text,
  tipomovdesagregado text,
  uf text,
  bairrossp text,
  bairrosfortaleza text,
  bairrosrj text,
  distritossp text,
  regioesadmdf text,
  mesorregi text,
  microrregi text,
  regiaoadmrj text,
  regiaoadmsp text,
  regiaocorede text,
  regiaocorede04 text,
  regiaogovsp text,
  regiaosenacpr text,
  regiaosenaipr text,
  regiaosenaisp text,
  subregiaosenaipr text,
  indtrabparcial text,
  indtrabintermitente text
) 
WITH (
  OIDS = FALSE
)

TABLESPACE ts_casa;

COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052018.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062018.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072018.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082018.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092018.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102018.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112018.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122018.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_012019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_022019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_032019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_042019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_052019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_062019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_072019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_082019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_092019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_102019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_112019.txt' USING DELIMITERS ';';
COPY caged.tmp FROM '/home/kidlulu/stage1/ts_casa/CAGEDEST_122019.txt' USING DELIMITERS ';';

insert into caged.caged_des_200701_atual
SELECT
   CAST(admitidosdesligados AS INT) AS admitidosdesligados,
   CAST(competenciadeclarada AS INT) AS competenciadeclarada,
   CAST(municipio AS INT) AS municipio,
   CAST(anodeclarado AS INT) AS anodeclarado,
   cbo2002ocupacao AS cbo2002ocupacao,
   cnae10classe AS cnae10classe,
   cnae20classe AS cnae20classe,
   cnae20subclas AS cnae20subclas,
   CAST(faixaempriniciojan AS INT) AS faixaempriniciojan,
   case when substring(grauinstrucao,1,1) = '{' then 99 else CAST(grauinstrucao AS INT) end AS grauinstrucao,
   CAST(qtdhoracontrat AS INT) AS qtdhoracontrat,
   CAST(ibgesubsetor AS INT) AS ibgesubsetor,
   CAST(idade AS INT) AS idade,
   CAST(indaprendiz AS INT) AS indaprendiz,
   CAST(indportadordefic AS INT) AS indportadordefic,
   case when substring(racacor,1,1) = '{' then 99 else CAST(racacor AS INT) end AS racacor,
   CAST(REPLACE(salariomensal,',','.') AS DOUBLE PRECISION) AS salariomensal,
   case 
   when CAST(competenciadeclarada AS INT) between 	201901	 and 	201912	 then 	998
   when CAST(competenciadeclarada AS INT) between 	201801	 and 	201812	 then 	954
   when CAST(competenciadeclarada AS INT) between 	201701	 and 	201712	 then 	937
   when CAST(competenciadeclarada AS INT) between 	201601	 and 	201612	 then 	880
   when CAST(competenciadeclarada AS INT) between 	201501	 and 	201512	 then 	788
   when CAST(competenciadeclarada AS INT) between 	201401	 and 	201412	 then 	724
   when CAST(competenciadeclarada AS INT) between 	201301	 and 	201312	 then 	678
   when CAST(competenciadeclarada AS INT) between 	201201	 and 	201212	 then 	622
   when CAST(competenciadeclarada AS INT) between 	201103	 and 	201112	 then 	545
   when CAST(competenciadeclarada AS INT) between 	201101	 and 	201102	 then 	540
   when CAST(competenciadeclarada AS INT) between 	201001	 and 	201012	 then 	510
   when CAST(competenciadeclarada AS INT) between 	200902	 and 	200912	 then 	465
   when CAST(competenciadeclarada AS INT) between 	200803	 and 	200901	 then 	415
   when CAST(competenciadeclarada AS INT) between 	200704	 and 	200802	 then 	380
   when CAST(competenciadeclarada AS INT) between 	200604	 and 	200703	 then 	350
   end as vl_sm,
   case 
   when CAST(competenciadeclarada AS INT) between 	201901	 and 	201912	 then 	33.27
   when CAST(competenciadeclarada AS INT) between 	201801	 and 	201812	 then 	31.80
   when CAST(competenciadeclarada AS INT) between 	201701	 and 	201712	 then 	31.23
   when CAST(competenciadeclarada AS INT) between 	201601	 and 	201612	 then 	29.33
   when CAST(competenciadeclarada AS INT) between 	201501	 and 	201512	 then 	26.27
   when CAST(competenciadeclarada AS INT) between 	201401	 and 	201412	 then 	24.13
   when CAST(competenciadeclarada AS INT) between 	201301	 and 	201312	 then 	22.60
   when CAST(competenciadeclarada AS INT) between 	201201	 and 	201212	 then 	20.73
   when CAST(competenciadeclarada AS INT) between 	201103	 and 	201112	 then 	18.17
   when CAST(competenciadeclarada AS INT) between 	201101	 and 	201102	 then 	18.00
   when CAST(competenciadeclarada AS INT) between 	201001	 and 	201012	 then 	17.00
   when CAST(competenciadeclarada AS INT) between 	200902	 and 	200912	 then 	15.50
   when CAST(competenciadeclarada AS INT) between 	200803	 and 	200901	 then 	13.83
   when CAST(competenciadeclarada AS INT) between 	200704	 and 	200802	 then 	12.67
   when CAST(competenciadeclarada AS INT) between 	200604	 and 	200703	 then 	11.67
   end as vl_diario,
   case 
   when CAST(competenciadeclarada AS INT) between 	201901	 and 	201912	 then 	4.54
   when CAST(competenciadeclarada AS INT) between 	201801	 and 	201812	 then 	4.34
   when CAST(competenciadeclarada AS INT) between 	201701	 and 	201712	 then 	4.26
   when CAST(competenciadeclarada AS INT) between 	201601	 and 	201612	 then 	4.00
   when CAST(competenciadeclarada AS INT) between 	201501	 and 	201512	 then 	3.58
   when CAST(competenciadeclarada AS INT) between 	201401	 and 	201412	 then 	3.29
   when CAST(competenciadeclarada AS INT) between 	201301	 and 	201312	 then 	3.08
   when CAST(competenciadeclarada AS INT) between 	201201	 and 	201212	 then 	2.83
   when CAST(competenciadeclarada AS INT) between 	201103	 and 	201112	 then 	2.48
   when CAST(competenciadeclarada AS INT) between 	201101	 and 	201102	 then 	2.45
   when CAST(competenciadeclarada AS INT) between 	201001	 and 	201012	 then 	2.32
   when CAST(competenciadeclarada AS INT) between 	200902	 and 	200912	 then 	2.11
   when CAST(competenciadeclarada AS INT) between 	200803	 and 	200901	 then 	1.89
   when CAST(competenciadeclarada AS INT) between 	200704	 and 	200802	 then 	1.73
   when CAST(competenciadeclarada AS INT) between 	200604	 and 	200703	 then 	1.59
   end as vl_hora,
   CAST(saldomov AS INT) AS saldomov,
   CAST(sexo AS INT) AS sexo,
   case when substring(tempoemprego,1,1) = '*' then 9999 else CAST(REPLACE(tempoemprego,',','.') AS DOUBLE PRECISION) end AS tempoemprego,
   CAST(tipoestab AS INT) AS tipoestab,
   case when substring(tipodefic,1,1) = '{' then 99 else CAST(tipodefic AS INT) end AS tipodefic,
   CAST(tipomovdesagregado AS INT) AS tipomovdesagregado,
   case when substring(uf,1,1) = '{' then 99 else CAST(REPLACE(uf,'DF','53') AS INT) end AS uf,
   case when substring(regioesadmdf,1,1) = '{' then 9999 else CAST(regioesadmdf AS INT) end AS regioesadmdf,
   case
     when replace(ibgesubsetor,' ','') = '1' then 'Extrativa mineral'
     when replace(ibgesubsetor,' ','') = '2' then 'Indústria de produtos minerais nao metálicos'
     when replace(ibgesubsetor,' ','') = '3' then 'Indústria metalúrgica'
     when replace(ibgesubsetor,' ','') = '4' then 'Indústria mecânica'
     when replace(ibgesubsetor,' ','') = '5' then 'Indústria do material elétrico e de comunicaçoe'
     when replace(ibgesubsetor,' ','') = '6' then 'Indústria do material de transporte'
     when replace(ibgesubsetor,' ','') = '7' then 'Indústria da madeira e do mobiliário'
     when replace(ibgesubsetor,' ','') = '8' then 'Indústria do papel, papelao, editorial e gráfica'
     when replace(ibgesubsetor,' ','') = '9' then 'Ind. da borracha, fumo, couros, peles, similares,'
     when replace(ibgesubsetor,' ','') = '10' then 'Ind. química de produtos farmacêuticos, veterin'
     when replace(ibgesubsetor,' ','') = '11' then 'Indústria têxtil do vestuário e artefatos de te'
     when replace(ibgesubsetor,' ','') = '12' then 'Indústria de calçados'
     when replace(ibgesubsetor,' ','') = '13' then 'Indústria de produtos alimentícios, bebidas e á'
     when replace(ibgesubsetor,' ','') = '14' then 'Serviços industriais de utilidade pública'
     when replace(ibgesubsetor,' ','') = '15' then 'Construçao civil'
     when replace(ibgesubsetor,' ','') = '16' then 'Comércio varejista'
     when replace(ibgesubsetor,' ','') = '17' then 'Comércio atacadista'
     when replace(ibgesubsetor,' ','') = '18' then 'Instituiçoes de crédito, seguros e capitalizaça'
     when replace(ibgesubsetor,' ','') = '19' then 'Com. e administraçao de imóveis, valores mobili'
     when replace(ibgesubsetor,' ','') = '20' then 'Transportes e comunicaçoes'
     when replace(ibgesubsetor,' ','') = '21' then 'Serv. de alojamento, alimentaçao, reparaçao, man'
     when replace(ibgesubsetor,' ','') = '22' then 'Serviços médicos, odontológicos e veterinários'
     when replace(ibgesubsetor,' ','') = '23' then 'Ensino'
     when replace(ibgesubsetor,' ','') = '24' then 'Administraçao pública direta e autárquica'
     when replace(ibgesubsetor,' ','') = '25' then 'Agricultura, silvicultura, criaçao de animais, ex'
  end as ibgesubsetordesc,
  cast(indtrabparcial as int) as indtrabparcial,
  cast(indtrabintermitente as int) as indtrabintermitente
FROM caged.tmp
where SUBSTRING(municipio,1,2) = '53';

DROP TABLE IF EXISTS caged.tmp;

select
  competenciadeclarada,
  sum(saldomov) as saldomov
from caged.caged_des_200701_atual 
group by competenciadeclarada 
order by competenciadeclarada desc;