---
  title: "What Is Interactive Visualization?"
author: "Cheng Peng"
date: "West Chester University "
output:
  html_document: 
  toc: yes
toc_depth: 4
toc_float: yes
fig_width: 6
number_sections: yes
toc_collapsed: yes
code_folding: hide
code_download: yes
smooth_scroll: true
theme: readable
fig_height: 4
---
  
  <style type="text/css">
  
  div#TOC li {
list-style:none;
background-color:lightgray;
background-image:none;
background-repeat:none;
background-position:0;
font-family: Arial, Helvetica, sans-serif;
color: #780c0c;
  }

/* mouse over link */
  div#TOC a:hover {
color: red;
}

/* unvisited link */
  div#TOC a:link {
color: blue;
}



h1.title {
  font-size: 24px;
  color: Darkblue;
  text-align: center;
  font-family: Arial, Helvetica, sans-serif;
  font-variant-caps: normal;
}
h4.author { 
  font-size: 18px;
  font-family: "Times New Roman", Times, serif;
  color: DarkRed;
  text-align: center;
}
h4.date { 
  font-size: 18px;
  font-family: "Times New Roman", Times, serif;
  color: DarkBlue;
  text-align: center;
}
h1 {
  font-size: 22px;
  font-family: "Times New Roman", Times, serif;
  color: darkred;
  text-align: center;
}
h2 { /
    font-size: 18px;
  font-family: "Times New Roman", Times, serif;
  color: navy;
  text-align: left;
}

h3 { 
  font-size: 15px;
  font-family: "Times New Roman", Times, serif;
  color: navy;
  text-align: left;
}

h4 { /* Header 4 - and the author and data headers use this too  */
    font-size: 18px;
  font-family: "Times New Roman", Times, serif;
  color: darkred;
  text-align: left;
}

/* unvisited link */
  a:link {
    color: green;
  }

/* visited link */
  a:visited {
    color: green;
  }

/* mouse over link */
  a:hover {
    color: red;
  }

/* selected link */
  a:active {
    color: yellow;
  }

</style>
  
  
  ```{r setup, include=FALSE}
# code chunk specifies whether the R code, warnings, and output 
# will be included in the output files.
options(repos = list(CRAN="http://cran.rstudio.com/"))
if (!require("tidyverse")) {
  install.packages("tidyverse")
  library(tidyverse)
}
if (!require("knitr")) {
  install.packages("knitr")
  library(knitr)
}
if (!require("cowplot")) {
  install.packages("cowplot")
  library(cowplot)
}
if (!require("latex2exp")) {
  install.packages("latex2exp")
  library(latex2exp)
}
if (!require("plotly")) {
  install.packages("plotly")
  library(plotly)
}
if (!require("gapminder")) {
  install.packages("gapminder")
  library(gapminder)
}
if (!require("png")) {
  install.packages("png")             # Install png package
  library("png")
}
if (!require("RCurl")) {
  install.packages("RCurl")             # Install RCurl package
  library("RCurl")
}
if (!require("colourpicker")) {
  install.packages("colourpicker")              
  library("colourpicker")
}
if (!require("gifski")) {
  install.packages("gifski")              
  library("gifski")
}
if (!require("magick")) {
  install.packages("magick")              
  library("magick")
}
if (!require("grDevices")) {
  install.packages("grDevices")              
  library("grDevices")
}
### ggplot and extensions
if (!require("ggplot2")) {
  install.packages("ggplot2")              
  library("ggplot2")
}
if (!require("gganimate")) {
  install.packages("gganimate")              
  library("gganimate")
}
if (!require("ggridges")) {
  install.packages("ggridges")              
  library("ggridges")
}
# knitr::opts_knit$set(root.dir = "C:/Users/75CPENG/OneDrive - West Chester University of PA/Documents")
# knitr::opts_knit$set(root.dir = "C:\\STA490\\w05")

knitr::opts_chunk$set(echo = TRUE,       
                      warning = FALSE,   
                      result = TRUE,   
                      message = FALSE)
```
