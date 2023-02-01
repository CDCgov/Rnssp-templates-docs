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

This template summarizes data quality metrics, including timeliness, completeness, and validity.  



---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP account password
* Site ID: Geographic region. Can be national or a participating site. 
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
