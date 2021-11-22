---
disableToc: false
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

The Interactive Text Analysis Dashboard template (`text_mining`) summarizes the chief complaint text and discharge diagnosis codes as part of an initial description of the content of these fields. Drop-down menus allow users to select from *existing* ESSENCE syndrome definitions, including CCDD categories, syndromes, and subsyndromes. Users can also input a custom query of the CCDD field or the API URL for complex queries that search multiple fields. 

By default, this template uses the Chief Complaint Query Validation (CCQV) data source in NSSP-ESSENCE, which includes the chief complaint and discharge diagnosis fields and does not include facility location, patient location, or other demographic information. This data source was created in collaboration with the NSSP Community of Practice (CoP). Users can test and create new syndrome categories using a large corpus of chief complaint and diagnosis code data that has more variation than would be present in any one site.  Some sites have opted out and do not contribute data to the Query Validation data source, including Arizona; Idaho; Illinois; Marion County, Indiana; Massachusetts; North Dakota; and Ohio. To accomodate site-level users, the full data details (facility location) data source can be selected so that data are pulled at the individual state-level. **Note: The API URL for the full details data source limits to CCQV fields only.** 

The visualizations in this template include total weekly volume of encounters, the 200 most frequent n-gram frequencies of chief complaint terms and discharge diagnosis codes, term co-occurrence network graphs for the ChiefComplaintParsed and CCDD fields, a chief complaint term correlation network graph, and n-grams with significant increases or decreases in occurrence over time. Potential clusters or groupings of terms are visualized by node color in term co-occurrence network graphs and can be selected from the "Select by group" drop-down menu. Clusters are determined by the Louvain algorithm, an unsupervised method to detect communities in networks by maximizing modularity. 

Interactive widgets were produced with the [plotly](https://plotly.com/r/) and [visNetwork](https://cran.r-project.org/web/packages/visNetwork/vignettes/Introduction-to-visNetwork.html) packages. These packages provide hovering functionality such as displaying data point values, ICD-10 code descriptions, and co-occurrence frequencies.

---
## User Inputs

* Access and Management Center (AMC) username and password (securely encrypted)
* Query start and end dates
* Has been Emergency: TRUE/FALSE option for limiting to emergency department visits 
* Data source: options include the Chief Complaint Query Validation (CCQV) data source or Facility Location \[Full Details\]
* Syndrome definition: CCDD category, subsyndrome, or syndrome.

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
Rnssp::remove_rmd_template("text_mining")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#text-analysis-interactive-dashboard-template-text_mining)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/text_mining.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
