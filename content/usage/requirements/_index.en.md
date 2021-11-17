---
disableToc: true
title: Requirements
weight: 10
tags: ["requirements", "R", "Rstudio", "demo", "IDE"] 
---

For a pleasant experience with the Rnssp R Markdown templates, users' system requirements must satisfy the following requirements:

* Proper installation and configuration of [R (>= 3.6.0)](https://www.R-project.org/)
* Proper installation and configuration of an [RStudio](https://www.rstudio.com/products/rstudio/download/) Integrated Development Environment
* Installation of the [Rnssp R package](https://cdcgov.github.io/Rnssp)

The development version of the [Rnssp R package](https://cdcgov.github.io/Rnssp) can be installed from Github using the [devtools](https://devtools.r-lib.org/) or the [remotes](https://github.com/r-lib/remotes) R package:

```r
# install the Rnssp package using devtools
devtools::install_github("cdcgov/Rnssp") # devtools::install_github("cdcgov/Rnssp", force = TRUE)
```

or

```r
# install the Rnssp package using remotes
remotes::install_github("cdcgov/Rnssp") # remotes::install_github("cdcgov/Rnssp", force = TRUE)
```

Shown below is a demo of the installation of the [Rnssp R package](https://cdcgov.github.io/Rnssp) using the [devtools](https://devtools.r-lib.org/) R package.


![Magic](images/install_Rnssp.gif?classes=shadow)
