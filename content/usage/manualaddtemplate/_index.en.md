---
title: Manually add a template
weight: 25
tags: ["manually", "add", "template", "demo"] 
---

Alternatively, users can manually add a template to their existing `Rnssp` installation with the `add_rmd_template()` utility function.

Users may download a template zip archive from the [Rnssp RMD templates](https://github.com/CDCgov/Rnssp-rmd-templates/tree/master/zip) Github repository and proceed to add it manually to her/his existing `Rnssp` installation.

In fact, when executed without any parameter, the `add_rmd_template()` utility function opens up a file explorer dialog box which allows the users to load a template zip file.

Make sure that the `Rnssp` package is loaded (`library(Rnssp)`), then:

```r
# Manually add a template
add_rmd_template() # with no argument
```

{{% notice warning %}}
Never forget to ALWAYS **RESTART YOUR R SESSION** after adding/updating a template to your existing `Rnssp` R package installation.
{{% /notice %}}

Down below is a live demonstration:

![Magic](images/manually_add_Rnssp_template.gif?classes=shadow)