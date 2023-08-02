---
disableToc: false
title: Lab Reason for Testing
weight: 50
tags: ["lab", "laboratory", "pathogen", "surveillance", "trend", "volume", "demographics", "testing", "reason"]
---

```yaml
name: lab_testing_reason
fullname: Lab Reason for Testing
description: >
  Summarizes the types of tests and patient demographics of a 
  user defined reason for testing query. Users are able to 
  select the geographic region (national, HHS region, state, or county), 
  time frames, and reason for testing. 
  Original Code By: Kelly Carey. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC).
create_dir: true
```
---
## Detailed Description

This template summarizes the types of tests and patient demographics of a user defined reason for testing query. Users are able to select the geographic region (national, HHS region, state, or county), time frames, and reason for testing.

---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP account password
* Start Date: Start date (February 1, 2019 or later)
* End Date: End date
* Geographic Region: Geographic region. Can be national, HHS Region, or state.
* User Selected County: A Laboratory by Results (Full Details) ESSENCE API with the county or counties of interest selected. Overwrites site parameter to run the report for a specific facility.
* Free Text Query: ESSENCE syntax for free-text search of codes in the reason for testing field (e.g. ^[;/ ]J02^)


---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `lab_testing_reason` to my existing Rnssp installation
Rnssp::add_rmd_template("lab_testing_reason")
```
---
## Remove this template

```r
# Remove `lab_testing_reason` from my existing Rnssp installation
Rnssp::remove_rmd_template("lab_testing_reason")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#lab-reason-for-testing-template-lab_testing_reason)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/lab_testing_reason.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
