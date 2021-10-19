R para Estadística Judicial: Reproducibilidad y Automatización 
========================================================
width: 1920
height: 1080
author: Lic. Sebastián Castillo 
date: 19-10-2021
autosize: true

Presentación
========================================================

+ **Primera Parte**: Introducción R-Estadística_Judicial   
+ **Segunda Parte**: Trabajo en RMarkdown   
+ **Objetivos:** 
  1. Dar a conocer atributos del sistema estadístico del STJER
  2. Completar la elaboración de un informe automatizado y reproducible de estadística judicial.     
+ **materiales_disponibles**: https://github.com/castillosebastian/Taller_R_EstadisticaJudicial.git     


Desafío para Estadística: Eficacia, Capacidad y Confiabilidad
========================================================

<table>
<caption>Estructura Judicial (oct-2021)</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> instancia </th>
   <th style="text-align:left;"> materia </th>
   <th style="text-align:right;"> cantidad_organos </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> primera_instancia </td>
   <td style="text-align:left;"> civil_com </td>
   <td style="text-align:right;"> 39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> primera_instancia </td>
   <td style="text-align:left;"> ejecuciones_conc-qui </td>
   <td style="text-align:right;"> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> primera_instancia </td>
   <td style="text-align:left;"> familia </td>
   <td style="text-align:right;"> 31 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> primera_instancia </td>
   <td style="text-align:left;"> laboral </td>
   <td style="text-align:right;"> 15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> primera_instancia </td>
   <td style="text-align:left;"> paz </td>
   <td style="text-align:right;"> 58 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> primera_instancia </td>
   <td style="text-align:left;"> penal </td>
   <td style="text-align:right;"> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> segunda_instancia </td>
   <td style="text-align:left;"> civil_com </td>
   <td style="text-align:right;"> 7 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> segunda_instancia </td>
   <td style="text-align:left;"> contencioso_adm </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> segunda_instancia </td>
   <td style="text-align:left;"> laboral </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> segunda_instancia </td>
   <td style="text-align:left;"> penal </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> superior_instancia </td>
   <td style="text-align:left;"> civil_com </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> superior_instancia </td>
   <td style="text-align:left;"> constitucional(apelacion) </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> superior_instancia </td>
   <td style="text-align:left;"> contencioso_adm </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> superior_instancia </td>
   <td style="text-align:left;"> laboral </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> superior_instancia </td>
   <td style="text-align:left;"> penal </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Total </td>
   <td style="text-align:left;"> - </td>
   <td style="text-align:right;"> 198 </td>
  </tr>
</tbody>
</table>
-------

**Estadística Descriptiva**

- datos_primarios_xmes = 198 * 4 ≈ 792 (ci,carch,resol,audic,mov)
- procesos = relevamiento, procesesamiento, análisis(-) y producción

**Análisis de Datos**
- datos_primarios: x 
- procesos = necesidad, [diseño-construccion relevamiento], procesamiento, análisis(+) e informe
- Ej: 
  * 1 ¿cómo ha evolucionado la actividad judicial durante la pandemia? ([resumen!](https://www.jusentrerios.gov.ar/2021/06/23/en-pandemia-2-millones-de-actos-procesales-y-mas-de-790-mil-presentaciones-digitales/))    
  * 2 ¿mejora la carga de trabajo reasignar Ejecutivos >$50mil desde juzgados de paz hacia los civiles?
  * 3 ¿cómo se adminitra el juicio abreviado?
  * [Narcomenudeo, Violencia, etc.]


Problema: [dato=>conocimiento] vs  (...datos=>conocimiento=>acción=datos...) 
========================================================

*"Los muertos que vos matáis gozan de buena salud"* (a propósito del trabajo manual con datos -1982/2016?)
![](papel_lapiz.jpg)

Una idea simple
========================================================

Donde hay **dato** debe haber **algoritmo**. 

-------

**[Reproducibilidad](https://cure.web.unc.edu/defining-reproducibility/)**: la capacidad de un cálculo para ser replicado por terceros operando de forma independiente. Vinculado a nociones de [Ciencia Abierta](https://en.unesco.org/sites/default/files/open_science_brochure_sp.pdf). Concepto de gran alcance en metodología. 

**Automatización**: introducción de agentes (ie. algoritmos) autónomos para realizar tareas recurrentes. Concepto muy amplio y gran alcance en materia de sistemas y proceso.     

 Productos/Servicios
========================================================

<div align="center">
<img src="APGE-productos_servicios.png" width=1300 height=1000, center>
</div>

APGE Sistema de Estadística Pública Judicial del STJER
========================================================

<img src="JUSTAT_tecnologías.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

Modelos:

+ [INDEC](https://www.indec.gob.ar/).
+ [EUROSTAT](https://ec.europa.eu/eurostat), 2016: Aplicación Modelo Genérico Proc. Estadísticos
+ [R, Official Statistics](https://cran.r-project.org/web/views/OfficialStatistics.html), 2013 +: Publicaciones y Herramientas 
+ [GREP-JUFEJUS Argentina](http://www.jufejus.org.ar/index.php/2013-04-29-21-18-54/estadisticas), 2010 +: Código de Buenas Prácticas de las Estadísticas Judiciales. Contra la descalificación del "monos con escopetas": el profesionalismo permanente. 

JUSTAT: arquitectura 
========================================================

Aplicaciones:

+ [Presentaciones](https://tablero.jusentrerios.gov.ar/) [automatización(-) de entradas]   
+ [Tableros](https://justat.jusentrerios.gov.ar/presentaciones/) [automatización(-) de salidas]  

Librerías (públicas): 

+ [Operaciones](https://bitbucket.org/apgye/apgyeoperationsjuser/)
+ [Procesamiento](https://bitbucket.org/apgye/apgyeprocesamiento/)
+ [Organización_Institucional](https://bitbucket.org/apgye/apgyejuserorganization/)
+ [Informes](https://bitbucket.org/apgye/apgyeinformes/): 
  - 'Modelo_Parametrizado *a demanda*'[automatización de servicios] 


Segunda Parte: informes RMarkdown
========================================================

**¿Qué es RMarkdown?**

+ Un subconjunto de tecnologías del ecosistema R orientado a la producción de documentos.

+ Documentos que integran información textual y códigos embebido a fin de facilitar la producción 
de análisis estadísticos. 

+ fuente: **https://rmarkdown.rstudio.com/**

Modelo típico de un 'análisis de datos'
========================================================

<div>
<img src="data-science.png" width=1520 height=900>
</div>

["R for Data Science"](https://r4ds.had.co.nz/introduction.html), Wickham-Grolemund.

Informe Automatizado
========================================================

- Informe0 = ejemplo RMarkdown   
  + Informe1-1 = 2+2, edición texto   
  + Informe1-2 = 2+2, parametro RM: "echo = F"   
  + Informe1-3 = variable: "resulado" = 2+2   
- Informe2 = df: "actos procesales no penales" (Datos Abiertos-MINJUS)
- Informe3 = Idem(Informe2) + parámetros
- nInformes (gratis): https://bitbucket.org/apgye/apgyeinformes/  

Análisis Automatizado: en proceso
========================================================

Análisis de documentos legales: sentencias ([colab](https://github.com/castillosebastian/Taller_R_EstadisticaJudicial/blob/master/NLU_Semantica_Vectorial_en_Textos_Legales.ipynb)) 

Bibliografía
========================================================

+ [An Introduction to R -Douglas et all, 2021](https://intro2r.com/)   
+ [R for Data Science](https://r4ds.had.co.nz/introduction.html)   

Gracias!
========================================================

+ Emilce Leones (operador)
+ Marcos Londero (técnico)
+ Sebastián Castillo (director)    

Área de Planificación Gestión y Estadística    
Superior Tribunal de Justicia de Entre Ríos    
0343-4209405/410 – ints. 396 y 305    
apge@jusentrerios.gov.ar  
estadistica@jusentrerios.gov.ar   
