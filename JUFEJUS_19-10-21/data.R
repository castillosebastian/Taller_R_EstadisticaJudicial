# data
library(dplyr)
library(ggplot2)
library(stringr)

# Valuación del software justat
ref1 = 2916000 - 540000- 280000 # presupuesto según MENDOZA_MINJUS
ref2 = 432000 + 864000 + 375000 # presupuesto Assertsolutions proveedor Rio Negro
ref3 = 500000 * 15 # presupusto Lex-Doctor Concentrador a julio 2016 

#precio dolar jun2018: 24 * 150000 (tablero + presentaciones)
#precio dolar feb2019: 36 *  50000 (boletin)
#financiamiento no reembolsable: 2.9 millones
tablero_y_presentaciones = ref1 + 100000
boletin_y_procesamiento = 1000000

df <- data.frame( año = c(2017,2018,2019,
                          2017,2018,2019,
                          2018), 
                  monto = c(2718527,3995684,4003967,
                            0,tablero_y_presentaciones,boletin_y_procesamiento,
                            2900000),
                  concepto = c("gasto_personal","gasto_personal", "gasto_personal", # prespuesto personal
                               "activos_intangibles", "activos_intangibles", "activos_intangibles", # desarrollo software
                               "aportes_no_reintegrables")) %>% # aporte MINJUS
  mutate(concepto = factor(concepto, levels = c("gasto_personal", "activos_intangibles", "aportes_no_reintegrables"), ordered = T)) %>% 
  mutate(monto = round(monto/1000000, digits = 1)) %>% 
  filter(monto != 0) 

Ingresos_por_Aportes_NRbles <- 2900000/1000000

ingresos <- str_c("$", round(sum(df$monto[df$concepto == "activos_intangibles"], Ingresos_por_Aportes_NRbles),
                             digits = 2), " millones")

gasto_personal <- str_c("$", round(sum(df$monto[df$concepto == "gasto_personal"]), digits = 1), " millones")



# •	1 servidor de características similares o superior al asignado al Área (para ref: disponemos de un HP ProLiant DL160 g9), pero con 64 GB de RAM y 2x 2 TB de disco compatible;
# •	1 servidor NAS rackeable de 8 o 12 bahias con 8 discos de 10TB compatibles; 
# •	22 equipos PC de escritorio para ser distribuidos 2 por jurisdicción grande (ie. Paraná, Concordia, Uruguay y Gualeguychú) a los responsables de superitendencia, 1 para cada una de las demás jurisdicciones y los equipos restantes eventualmente afectar al Ministerio Público Fiscal. 
# 


