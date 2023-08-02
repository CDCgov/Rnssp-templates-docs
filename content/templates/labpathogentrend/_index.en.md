---
disableToc: false
title: Lab Pathogen Surveillance
weight: 45
tags: ["lab", "laboratory", "pathogen", "surveillance", "trend", "volume", "demographics", "response"]
---

```yaml
name: lab_pathogen_trend
fullname: Lab Pathogen Surveillance
description: >
  Generates a report of all tests for a selected laboratory A 
  laboratory category 2 pathogen by user selected time period 
  and demographic stratification. Users can select to return 
  the percent of tests with negative results or positive results.
  Original Code By: Jourdan Devies & Kelly Carey. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC). 
create_dir: true
```
---
## Detailed Description

This template generates a trend report of testing volume and the percent of tests that are positive for all Lab A LabCategory2 options in the ESSENCE Laboratory by Results data source. Users are able to select a time period and geographic region (national, HHS Region, state, or county). Time periods less than or equal to 60 days will return daily timeseries, greater than 60 days and less than 1 year will return MMWR week timeseries, and greater than 1 year will return monthly timeseries.

---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP account password
* Start Date: Start date (February 1, 2019 or later)
* End Date: End date
* Lab Category 2 Selection: User selected Lab Result Category 2 option from the list to run the report. 
* Test Type(s): Select the laboratory test type to be included in the output (e.g. All, Antibody, Antigen, etc)
* Percent Calculation: Choose between graphing the percent of tests with a positive result or percent of tests with a negative result. 
* Geographic Region: Geographic region. Can be national, HHS Region, or state. 
* User Selected County: A Laboratory by Results (Full Details) ESSENCE API with the county or counties of interest selected. Overwrites site parameter to run the report for a specific facility.
* User Selected County Label: Label the report with the county name(s). 
* Age Group: Can be one of the age, sex, race, or ethnicity classifications in ESSENCE laboratory data.


---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `lab_pathogen_trend` to my existing Rnssp installation
Rnssp::add_rmd_template("lab_pathogen_trend")
```
---
## Remove this template

```r
# Remove `lab_pathogen_trend` from my existing Rnssp installation
Rnssp::remove_rmd_template("lab_pathogen_trend")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#lab-pathogen-surveillance-template-lab_pathogen_trend)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/lab_pathogen_trend.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
