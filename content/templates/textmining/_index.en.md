---
disableToc: false
title: Text Analysis Dashboard
weight: 10
tags: ["text", "analysis", "dashboard", "mining", "nssp", "essence", "template"] 
---

```yaml
name: text_mining
fullname: Text Analysis Interactive Dashboard
description: >
  An automated Text Analysis Interactive Dashboard template. 
  Original Code By: Michael Sheppard. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC).
create_dir: true
```
---
## Detailed Description

The Interactive Text Analysis Dashboard template (`text_mining`) summarizes the chief complaint text and discharge diagnosis codes as part of an initial description of the content of these fields. Drop-down menus allow users to select from *existing* ESSENCE syndrome definitions, including CCDD categories, syndromes, and subsyndromes. Users can also input a custom query of the CCDD field or the API URL for complex queries that search multiple fields. 

This template can access two different data sources, including the Chief Complaint Query Validation (CCQV) data source in NSSP ESSENCE and Facility Location Full Details. Please be aware that when using the CCQV data source some sites have opted out of contributing their data, including Arizona, Idaho, Illinois, Marion County, Indiana, Massachusetts, North Dakota, and Ohio. To accomodate site-level users, the Facility Location Full Details data source can be selected so that data are pulled at the individual state-level. **Note: The API URL for the full details data source limits to CCQV fields only.** 

The visualizations in this template include total weekly volume of encounters, the 200 most frequent n-gram frequencies of chief complaint terms and discharge diagnosis codes, term co-occurrence network graphs for the ChiefComplaintParsed and CCDD fields, a chief complaint and discharge diagnosis term correlation network graph, and n-grams with significant increases or decreases in occurrence over time. Potential clusters or groupings of terms are visualized by node color in term co-occurrence and correlation network graphs and can be selected from the "Select by group" drop-down menu. Clusters are determined by the Louvain algorithm, an unsupervised method to detect communities in networks by maximizing modularity. 

Interactive widgets were produced with the [plotly](https://plotly.com/r/) and [visNetwork](https://cran.r-project.org/web/packages/visNetwork/vignettes/Introduction-to-visNetwork.html) packages. These packages provide hovering functionality to display data point values and ICD-10 code descriptions.

---
## User Inputs

* Access and Management Center (AMC) username and password (securely encrypted)
* Query start and end dates
* Has been Emergency: TRUE/FALSE option for limiting to emergency department visits 
* Data source: options include the Chief Complaint Query Validation (CCQV) data source or Facility Location \[Full Details\]
* Site: dropdown list of all sites reporting to the NSSP (applies only when using Facility Location \[Full Details\]
* Age Groups: options include all existing ESSENCE age grouping systems
* Syndrome definition: CCDD category, subsyndrome, or syndrome.
* CCDD Query: option for custom chief complaint and discharge diagnosis free-text queries
* Complex Query: option to paste in API URL for complex queries searching multiple fields
* Title: custom title of Flexdashboard HTML output

---
## Output

When knit with parameters, this template generates a [Flexible Dashboard](https://pkgs.rstudio.com/flexdashboard/) report in HTML format.

---
## Add this template

```r
# Add `text_mining` to my existing Rnssp installation
Rnssp::add_rmd_template("text_mining")
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
