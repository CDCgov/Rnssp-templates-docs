---
disableToc: false
title: ICD-10 Discharge Diagnosis Code Usage and Features
weight: 60
tags: ["icd10", "discharge diagnosis", "trend analysis", "glm", "asyndromic", "nssp", "essence", "emergency", "department"]
---

```yaml
name: icd10_code_use
fullname: ICD-10 Discharge Diagnosis Code Usage and Features
description: >
  This template can be used to consider all discharge diagnosis codes
  occurring over a recent time window for a site and identify ICD-10
  codes with statistically significant increases or decreases in trend. 
  Basic demographic features such as mean and median age, and percentages
  by patient sex are reported for ICD-10 codes that are identified as having
  recent significant change in occurrence. Additionally, this template
  detects ICD-10 codes with significant change due to annual ICD-10 revisions
  imposed by CMS in October.
  Original Code By: Michael Sheppard. 
  Adapted to the Rnssp Package by: Michael Sheppard. 
  National Syndromic Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC). 
create_dir: true
```
---
## Detailed Description

This template supports asyndromic surveillance by considering all ICD-10 discharge diagnosis codes occurring in a site's emergency department records over a recent time window and identifying codes with statistically significant increases or decreases in trend over an 11-week period. The data pulled does not limit to a specific CCDD Category, syndrome, or query and includes all records occurring in the date range specified by the user. The report includes a summary of discharge diagnosis code types received (i.e., ICD-10, ICD-9, or SNOMED), summary statistics reporting on total unique codes, mean and median character length, and weekly trends of unique code types. The main section of this report includes HTML sparkline tables displaying weekly trends for codes identified as having significant increases/decreases, ESSENCE time series URL links, and associated demographic features. Features include overall code frequencies, mean and median age, and patient sex breakdowns. Please note that the sparklines represent discharge diagnosis unigram trends that are calculated by dividing the weekly number of occurrences of a code by the total summed frequency of all codes occurring in that week. The trends will therefore mirror trends in the ESSENCE time series figure (after clicking on the URL), however the numeric values will not match as the ESSENCE time series displays the percentage of ED visits in which the code occurred. Lastly, this template includes a summary of ICD-10 discharge diagnosis codes that were identified as having significant increases or decreases due to ICD-10 code revisions imposed by CMS in October of each year. Users can define an end date that is constrained to occur on a Saturday (end of an MMWR week) to include a full week's worth of data for the ending week. The start date will automatically be populated as 17 weeks earlier than the end week to include 18 total weeks of data. Keep in mind that trend significance is only assessed for the last 11 weeks of this 18-week period. Lastly, users will choose their site and indicate whether or not they want to limit to records where Has Been E is Yes. 

---
## User Inputs

* NSSP Username: AMC and ESSENCE account username
* NSSP Password: AMC and ESSENCE account password
* End Date: Saturday end date of the last week to include
* Has been Emergency: Checked by default to limit to ED encounters. If unchecked, records from other facility types (i.e., urgent care visits) will be included.
* Site: Site name
* Title: Customized title, otherwise set to ICD-10 Discharge Diagnosis Code Usage and Feature Template by default


---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `icd10_code_use` to my existing Rnssp installation
Rnssp::add_rmd_template("icd10_code_use")
```
---
## Remove this template

```r
# Remove `icd10_code_use` from my existing Rnssp installation
Rnssp::remove_rmd_template("icd10_code_use")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#icd-10-discharge-diagnosis-code-usage-and-features-template-icd10_code_use)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/icd10_code_use.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
