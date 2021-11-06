---
disableToc: true
title: Text Analysis Dashboard
weight: 10
tags: ["text", "analysis", "dashboard", "mining", "nssp", "essence", "template"] 
---

```yaml
name: text_mining
fullname: State Emergency Department Report
description: >
  An automated state emergency department report template summarizing CCDD categories.
  Original Code By: Michael Sheppard.
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon.
  National Syndromic and Surveillance Program.
  Centers for Disease Control and Prevention (CDC).
create_dir: true
```
---
## Detailed Description

The Interactive Text Analysis Dashboard template (`text_mining`) summarizes the chief complaint text and diagnosis codes as part of an initial description of the content of these fields in *existing* syndromes or categories.

The data source used in this template is the Chief Complaint Query Validation (CCQV) data source in NSSP-ESSENCE, which includes the chief complaint and discharge diagnosis fields, and does not include facility location, patient location, or other demographic information. This data source was created with the Syndromic Community of Practice (CoP) so that users can test and create new syndrome categories using a large corpus of chief complaint and diagnosis code data that includes more variation than would be present in any one site.  Some sites have opted out of contributing their data to the Query Validation data source, including Arizona, Idaho, Illinois, Marion County, Indiana, Massachusetts, North Dakota, and Ohio.

The visualizations in this template include total weekly volume of encounters, the 200 most frequent n-gram frequencies of chief complaint terms and discharge diagnosis codes, term co-occurrence network graphs for the ChiefComplaintParsed and CCDD fields, a chief complaint term correlation network graph, and n-grams with significant increases or decreases in occurrence over time. Potential clusters or groupings of terms are visualized by node color and can be selected from the "Select by group" drop down menu.

All interactive widgets were produced with the [plotly](https://plotly.com/r/) and [visNetwork](https://cran.r-project.org/web/packages/visNetwork/vignettes/Introduction-to-visNetwork.html) packages which provide hovering functionality such as displaying data point values, ICD-10 code descriptions, and co-occurrence frequencies.

---
## User Inputs

* AMC username and password (securely encrypted)
* Start and end date of query
* Has been Emergency: TRUE/FALSE option for limiting to emergency department visits 
* Data source: options include the Chief Complaint Query Validation (CCQV) data source or Facility Location (Full Details)
* Syndrome definition: CCDD Category, Subsyndrome, or Syndrome.

---
## Output

When knit with parameters, this template generates a [Flexible Dashboard](https://pkgs.rstudio.com/flexdashboard/) report in HTML format.

---
## Add this template

```r
# Add `text_mining` to my existing Rnssp installation
Rnssp::add_rmd_template(template_name = "text_mining")
```
---
## Remove this template

```r
# Remove `text_mining` from my existing Rnssp installation
Rnssp::remove_rmd_template(template_name = "text_mining")
```

---
[**Latest Update!**](/changelogs/#text-analysis-interactive-dashboard-template-text_mining)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/text_mining.zip" icon="fas fa-download" %}}Download this template{{% /button %}}