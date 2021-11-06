---
title: Remove a template
weight: 30
tags: ["remove", "template", "demo"] 
---

When an Rnssp R Markdown template is no longer needed, it can be disposed of with the `remove_rmd_template()` utility function.

Here is how to delete the `essence_ccdd` template:

```r
# Remove the `essence_ccdd` template
remove_rmd_template("essence_ccdd") # or remove_rmd_template(template = "essence_ccdd")
```

{{% notice warning %}}
Never forget to ALWAYS **RESTART YOUR R SESSION** after removing a template from your existing `Rnssp` R package installation.
{{% /notice %}}

Here is a live demo:

![Magic](images/remove_Rnssp_template.gif?classes=shadow)