# Informe 
library(dplyr)
library(knitr)
library(apgyeDSL)
library(apgyeJusEROrganization)
library(apgyeOperationsJusER)
library(stringr)
library(janitor)
library(kableExtra)
library(tidyr)
library(tibble)
library(ggplot2)
library(RColorBrewer)
library(colorRamps)
library(lubridate)
library(scales)
library(apgyeProcesamiento)
library(gghighlight)
library(rlang)
library(ggthemes)
library(readr)
library(tidyquant)
library(tibbletime)
library(formattable)
library(jsonlite)

# Listado de Magistrados y Funcionarios
magistrados_y_secretarios <- function(dbprod) {
  mag <- dbprod %>%
    apgyeDSL::apgyeTableData('personal_planta_ocupada') %>%
    left_join(dbprod %>% apgyeDSL::apgyeTableData('personal_personas') %>%
                select(idagente, categoria, apellido, nombres), by=c("idagente")
    ) %>%
    filter(grepl("JUEZ|SECRETARIO|VOCAL|FISCAL|DEFENSOR", categoria)) %>%
    collect()
  
  magist_func_id_agentes <- mag$idagente %>% unique()
  # add "0" ti IDs for External Agent
  magist_func_id_agentes[length(magist_func_id_agentes)+1] <- "0"
  
  magist_func_id_agentes 

} 


