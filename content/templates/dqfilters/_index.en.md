---
disableToc: false
title: Data Quality Filter Matrix
weight: 35
tags: ["data quality", "discharge diagnosis informative", "coefficient of variation", "filters", "DDI", "CoV"] 
---

```yaml
name: dq_filters
fullname: Data Quality Filter Matrix
description: >
  This template summarizes the DDI Avg Weekly Percent (DDI) and 
  Data Quality CoV (HasBeenE) (CoV (HasBeenE)) filters individually 
  and in conjuction with one another.
  Original Code By: Kelly Carey. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC).  
create_dir: true
```
---
## Detailed Description

This template summarizes the Discharge Diagnosis Informative Avg Weekly Percent (DDI) and Data Quality Coefficient of Variation (CoV/CoV (HasBeenE)) filters individually and in conjuction with one another. Selections for site, facility type, and visit type are included and the report will automatically adjust the filter year and CoV filter to input parameters.

Matrices summarize the weekly number of facilities reporting data and the overall visit volume for each data quality filter duration based on the start year selected (current year through 10 years back) for DDI cutpoints of 70%, 75%, and 80%, and CoV (HasBeenE) cut points of 30, 35, 40, and 45.

A table is included that lists the DDI and CoV (HasBeenE) values for each data quality filter year for all facilities included in the report.

---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP account password
* Start Date Year: First year of time period of interest. The report will automatically select the correct data quality filter years that cover data from the start year to the present year.
* Site ID: Geographic region. Can be national or a participating site. Multiple sites can be selected.
* Facility Type(s): Facility classifications to be included in the report.
* Limit visits to HasBeenE = Yes?" If yes, only emergency department visits (HasBeenE = Yes) will be included. If no, all visits will be included. 

---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `dq_filters` to my existing Rnssp installation
Rnssp::add_rmd_template("dq_filters")
```
---
## Remove this template

```r
# Remove `dq_filters` from my existing Rnssp installation
Rnssp::remove_rmd_template("dq_filters")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#data-quality-filter-matrix-template-dq_filters)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/dq_filters.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
