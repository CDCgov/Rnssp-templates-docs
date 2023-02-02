---
disableToc: false
title: State Data Quality Report
weight: 40
tags: ["data quality", "data quality metrics", "timeliness", "completeness", "validity", "NSSP priority elements"] 
---

```yaml
name: state_dq_report
fullname: State Data Quality Report
description: >
  This template summarizes data quality metrics, including 
  timeliness, completeness, and validity. 
  It currently includes NSSP Priority 1 & NSSP Priority 2 elements.
  Original Code By: Andrew Farrey (Kentucky Injury Prevention and Research Center).
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic and Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC).  
create_dir: true
```
---
## Detailed Description

The state data quality template calculates and summarizes syndromic surveillance data quality metrics pulled from the BioSense platform and the ESSENCE application programming interface (API). The template assesses the coverage, timeliness, completeness, and validity of patient encounters limited to the selected calculated patient class (C_Patient_Class) that occurred during the chosen date range. Note that default end_date reflects the recommended two day lag time.

Coverage visualizations include interactive plotly plots of the total active facility count, total patient encounters limited to the selected C_Patient_Class, total messages received by BioSense for patient encounters limited to the selected C_Patient_Class, and a table of onboarding facilities.

Timeliness visualizations include first message (or "overall") timeliness, message counts by NSSP Timeliness Category by facility, message percentages by NSSP timeliness count by facility, a table of chief complaint timeliness by facility, and a table of diagnosis code timeliness by facility. BioSense platform arrival date time stamps have been adjusted to reflect the user’s selected time zone to avoid adversely affecting timeliness calculations.

All NSSP Priority 1 and NSSP Priority 2 data elements are assessed for completness and validity. Completeness is calculated by data element across the entire patient encounter, while validity is assessed on a per message or per patient encounter basis, depending on each data field’s requirement level. 

---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP account password
* Site ID: Geographic region. Must select one participating site. 
* Start Date: Start date
* End Date: End date
* Patient Class: Can be either "E (Emergency Department)", "I (Inpatient)", or "O (Outpatient)"
* Time Zone: User's time zone.

---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `dq_filters` to my existing Rnssp installation
Rnssp::add_rmd_template("state_dq_report")
```
---
## Remove this template

```r
# Remove `dq_filters` from my existing Rnssp installation
Rnssp::remove_rmd_template("state_dq_report")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#state-data-quality-report-template-state_dq_report)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/state_dq_report.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
