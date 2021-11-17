---
disableToc: true
title: Remove a template
weight: 30
tags: ["remove", "template", "demo"] 
---

When an Rnssp R Markdown template is no longer needed, you can dispose of it by using the `remove_rmd_template()` utility function.

Here's how to delete the `essence_ccdd` template:

```r
# Remove the `essence_ccdd` template
remove_rmd_template("essence_ccdd") # or remove_rmd_template(template = "essence_ccdd")
```

{{% notice warning %}}
ALWAYS **RESTART YOUR R SESSION** after removing a template from your `Rnssp` R package installation.
{{% /notice %}}

Here's a demo:

![Magic](images/remove_Rnssp_template.gif?classes=shadow)