---
disableToc: true
title: Add a template
weight: 20
tags: ["add", "template", "demo"] 
---

After loading the `Rnssp` R package (`library(Rnssp)`), the `add_rmd_template()` utility function can be used to add/update a template. 

Here is an example with the `essence_ccdd` template:

```r
# Add the `essence_ccdd` template
add_rmd_template(template_name = "essence_ccdd")
```

{{% notice warning %}}
Never forget to ALWAYS **RESTART YOUR R SESSION** after adding/updating a template to your existing `Rnssp` R package installation.
{{% /notice %}}

Here is a live demonstration:

![Magic](images/add_Rnssp_template.gif?classes=shadow)

