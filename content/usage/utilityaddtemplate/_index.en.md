---
disableToc: true
title: Add a template
weight: 20
tags: ["add", "template", "demo"] 
---

After loading the `Rnssp` R package (`library(Rnssp)`), use the `add_rmd_template()` utility function to add/update a template. 

This example uses the `essence_ccdd` template:

```r
# Add the `essence_ccdd` template
add_rmd_template(template_name = "essence_ccdd")
```

{{% notice warning %}}
ALWAYS **RESTART YOUR R SESSION** after adding or updating a template to your `Rnssp` R package installation.
{{% /notice %}}

Here’s a demo:

![Magic](images/add_Rnssp_template.gif?classes=shadow)

