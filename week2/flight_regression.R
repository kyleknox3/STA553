---
title: '<font size = 7 color = "white">Does the Number of Flights influence Flight Delays? </font>'
subtitle: '<img src="img/takeoff" width=100 height=100>'
author: '<font size = 5 color = "white"> Kyle Knox </font>'
institute: '<font size = 6 color = "white">Simple Linear Regression</font><br> '
date: ' <font color = "white" size =4> Prepared for<br> </font> <br> <font color = "gold" size = 6> STA553: Data Visualization </font> <br> <br> <font color = "white" size = 3> Slides available at: https://your-RPubs-url AND https://your-GitHub-url</font>'
output:
  xaringan::moon_reader:
  css: xaringan-themer01.css
nature:
  slideNumberFormat: "%current%"
highlightStyle: github
highlightLines: true
ratio: 16:9
countIncrementalSlides: true
---
  
  ```{r setup, include=FALSE}
options(htmltools.dir.version = FALSE)
if (!require("knitr")) {
  install.packages("knitr")
  library(knitr)
}
if (!require("pander")) {
  install.packages("pander")
  library(pander)
}
if (!require("plotly")) {
  install.packages("plotly")
  library(plotly)
}
if (!require("ggplot2")) {
  install.packages("ggplot2")
  library(ggplot2)
}
knitr::opts_chunk$set(
  fig.width=3, 
  fig.height=3, 
  fig.retina=12,
  out.width = "100%",
  cache = FALSE,
  echo = TRUE,
  message = FALSE, 
  warning = FALSE,
  hiline = TRUE
)
```

```{r xaringan-themer, include=FALSE, warning=FALSE}
library(xaringanthemer)
style_duo_accent(primary_color = "#397255",
                 secondary_color = "#FFFFFF",
                 # fonts
                 header_font_google = google_font("Martel"),
                 text_font_google = google_font("Lato"),
                 code_font_google = google_font("Fira Mono"))
```
<h1 align="center"> Table of Contents</h1>
  <BR>
  
  .pull-left[
    - What is **xaringan** presentation?
      - Demos of **xaringanthemer** presentation
    - Installation and configurations
    - CSS and modifications
    - Basic syntax and formatting
    - Markup languages
    - Highlighting and formatting
    - List types
    - Coloring and color matching
    - Text coloring
    - Slide background coloring
    - RGB and HEX color mixing 
    - Matching R plot and slide background
    - Customizing background color
    - choosing appropriate colors for plots
  ]

.pull-right[
  - Aesthetics of plots and tables
  - Managing graphical features
  - Sizes of title
  - sizes of labels and tick marks
  - dimension of plot through chunk option
  - Static text tables
  - Interactive data tables
  - Interactive plots
  - Embedding web pages and PDF files
  - Opened interactive apps
  - Opened PDF file
  - including regular webpages
  - Embedding images
  - static and animated images
  - controlling size of images
]





---