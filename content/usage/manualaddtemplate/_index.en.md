---
disableToc: true
title: Manually add a template
weight: 25
tags: ["manually", "add", "template", "demo"] 
---

A template may manually be added to the existing `Rnssp` installation by using the `add_rmd_template()` utility function.

Users may download a template zip archive from the [Rnssp RMD templates](https://github.com/CDCgov/Rnssp-rmd-templates/tree/master/zip) Github repository and manually add it to the existing `Rnssp` installation.

In fact, when executed without any parameter, the `add_rmd_template()` utility function opens a file explorer dialog box that allows users to load a template zip file.

Make sure that the `Rnssp` package is loaded (`library(Rnssp)`), as shown below:

```r
# Manually add a template
add_rmd_template() # with no argument
```

{{% notice warning %}}
ALWAYS **RESTART YOUR R SESSION** after adding or updating a template to your `Rnssp` R package installation.
{{% /notice %}}

Here's a demo:

![Magic](images/manually_add_Rnssp_template.gif?classes=shadow)