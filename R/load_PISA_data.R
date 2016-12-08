################################################################
### Carrega dados PISA 2015 Diretamente do reópositrio da OCDE
### Dados na versão SPSS e scipt comentado em português (BR)
###############################################################

#### Carrega bibliotecas ####
library(utils)
library(haven)


#### Questionário da escola ####
#### Cria arquivo temporário
temp <- tempfile()

# Faz download do arquivo zip
download.file("http://vs-web-fs-1.oecd.org/pisa/PUF_SPSS_COMBINED_CMB_SCH_QQQ.zip", temp, mode="wb")

# Extrai os arquivos compactados em zip no diretório temporário
unzip(temp, exdir = tempdir())

# Obtém localização do arquivo csv
fns <- list.files(tempdir(), pattern="*.sav", full.names=TRUE, recursive=TRUE)

# Lê arquivo csv
school_q15 <- read_spss(fns)

# Remove variáveis temporárias
unlink(temp)
rm(temp)
rm(fns)

#### Questionário do(a) professor(a) ####
#### Cria arquivo temporário
temp <- tempfile()

# Faz download do arquivo zip
download.file("http://vs-web-fs-1.oecd.org/pisa/PUF_SPSS_COMBINED_CMB_TCH_QQQ.zip", temp, mode="wb")

# Extrai os arquivos compactados em zip no diretório temporário
unzip(temp, exdir = tempdir())

# Obtém localização do arquivo csv
fns<-list.files(tempdir(), pattern="*.sav", full.names=TRUE, recursive=TRUE)

# Lê arquivo csv
teacher_q15 <- read_spss(fns)

# Remove variáveis temporárias
unlink(temp)
rm(temp)
rm(fns)

#### Questionário itens ####
#### Cria arquivo temporário
temp <- tempfile()

# Faz download do arquivo zip
download.file("http://vs-web-fs-1.oecd.org/pisa/PUF_SPSS_COMBINED_CMB_STU_COG.zip", temp, mode="wb")

# Extrai os arquivos compactados em zip no diretório temporário
unzip(temp, exdir = tempdir())

# Obtém localização do arquivo csv
fns <- list.files(tempdir(), pattern="*.sav", full.names=TRUE, recursive=TRUE)

# Lê arquivo csv
item_15 <- read_spss(fns)

# Remove variáveis temporárias
unlink(temp)
rm(temp)
rm(fns)

#### Questionário timming ####
#### Cria arquivo temporário
temp <- tempfile()

# Faz download do arquivo zip
download.file("http://vs-web-fs-1.oecd.org/pisa/PUF_SPSS_COMBINED_CMB_STU%20_QTM.zip", temp, mode="wb")

# Extrai os arquivos compactados em zip no diretório temporário
unzip(temp, exdir = tempdir())

# Obtém localização do arquivo csv
fns <- list.files(tempdir(), pattern="*.sav", full.names=TRUE, recursive=TRUE)

# Lê arquivo csv
timming_15 <- read_spss(fns)

# Remove variáveis temporárias
unlink(temp)
rm(temp)
rm(fns)


#### Questionário específico para Albânia, Argentina, Cazaquistão e Malásia ####
#### Cria arquivo temporário
temp <- tempfile()

# Faz download do arquivo zip
download.file("http://vs-web-fs-1.oecd.org/pisa/PUF_SPSS_COMBINED_CM2_STU_QQQ_COG_QTM_SCH_TCH.zip", temp, mode="wb")

# Extrai os arquivos compactados em zip no diretório temporário
unzip(temp, exdir = tempdir())

# Obtém localização do arquivo csv
fns <- list.files(tempdir(), pattern="*.sav", full.names=TRUE, recursive=TRUE)

# Lê arquivo csv
spcif_15 <- read_spss(fns)

# Remove variáveis temporárias
unlink(temp)
rm(temp)
rm(fns)

#### Questionário dos estudantes ####
#### Cria arquivo temporário
temp <- tempfile()

# Faz download do arquivo zip
download.file("http://vs-web-fs-1.oecd.org/pisa/PUF_SPSS_COMBINED_CMB_STU_QQQ.zip", temp, mode="wb")

# Extrai os arquivos compactados em zip no diretório temporário
unzip(temp, exdir = tempdir())

# Obtém localização do arquivo csv
fns<-list.files(tempdir(), pattern="*.sav", full.names=TRUE, recursive=TRUE)

# Lê arquivo csv
stud_q15 <- read_spss(fns)

# Remove variáveis temporárias
unlink(temp)
rm(temp)
rm(fns)
