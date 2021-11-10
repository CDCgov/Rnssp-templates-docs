---
disableToc: true
title: List available templates
weight: 15
tags: ["load", "library", "list", "template", "demo"] 
---

Rnssp R Markdown templates are being designed and released on a regular basis. All available templates can be explored on the publicly accessible [Rnssp RMD templates Github repository](https://github.com/CDCgov/Rnssp-rmd-templates). 

Luckily, the [Rnssp R package](https://cdcgov.github.io/Rnssp/) provides various utility functions to easily manage templates. One of those utility functions is the `Rnssp::list_templates()` function.

First, load the `Rnssp` R package:

```r
# Load the Rnssp package
library(Rnssp)
```

then, get the most recent list of the available packages:

```r
# List all available templates
list_templates
```

To get a tabular and more detailed view of all the available templates, run:

```r
# Detailed table view of the available templates
list_templates(as.table = TRUE) %>% View()
```

Here's a live demonstration:

![Magic](images/list_available_Rnssp_templates.gif?classes=shadow)

