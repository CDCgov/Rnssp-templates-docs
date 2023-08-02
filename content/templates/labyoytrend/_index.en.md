---
disableToc: false
title: Lab Year Over Year Trends
weight: 55
tags: ["lab", "laboratory", "pathogen", "surveillance", "trend", "volume", "routine"]
---

```yaml
name: lab_yoy_trend
fullname: Lab Year Over Year Trends
description: >
  Generates a trend report of testing volume and the percent of 
  tests that are positive for all Lab A LabCategory 2 
  options in the ESSENCE Laboratory by Results data source. 
  Original Code By: Dylan Johns & Kelly Carey. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC).
create_dir: true
```
---
## Detailed Description

This template generates a trend report of testing volume and the percent of tests that are positive for all Lab A LabCategory 2 options in the ESSENCE Laboratory by Results data source. Users are able to select a time period and geographic region (national, HHS Region, state, or county).

---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP account password
* Start Date: Start date (February 1, 2019 or later)
* End Date: End date
* Lab Category 1 Selections: Laboratory category 1 options to be included in the report.
* Geographic Region: Geographic region. Can be national, HHS Region, or state.
* User Selected County: A Laboratory by Results (Full Details) ESSENCE API with the county or counties of interest selected. Overwrites site parameter to run the report for a specific facility.
* User Selected County Label: Label the report with the county name(s). 



---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `lab_yoy_trend` to my existing Rnssp installation
Rnssp::add_rmd_template("lab_yoy_trend")
```
---
## Remove this template

```r
# Remove `lab_yoy_trend` from my existing Rnssp installation
Rnssp::remove_rmd_template("lab_yoy_trend")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#lab-year-over-year-trends-template-lab_yoy_trend)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/lab_yoy_trend.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
