---
title: ED ICD-10 Category Volumes
weight: 20
tags: ["emergency", "department", "icd10", "volumes", "heatmap", "nssp", "essence", "template"] 
---

```yaml
name: ed_icd10_volume
fullname: Emergency Department ICD-10 Category Volumes
description: >
  This template generates heatmaps of the top N ICD-10-CM codes 
  by ICD-10-CM chapter, ICD-10-CM section, ICD-10-CM diagnosis code, 
  and the corresponding clinical classifications software refined (CCSR) 
  category. The user is able to select the geographic region of interest, 
  time frame, data quality filters, and ESSENCE age group category.  
  Original Code By: Kelly Carey. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic and Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC). 
create_dir: true
```
---
## Detailed Description

This template (`ed_icd10_volume`) generates heatmaps of the top N ICD-10-CM codes by ICD-10-CM chapter, ICD-10-CM section, ICD-10-CM diagnosis code, and the corresponding clinical classifications software refined (CCSR) category. The user is able to select the geographic region of interest, time frame, data quality filters, and ESSENCE age group category.

**ICD-10-CM Chapters, Sections, and Codes**: The International Classification of Diseases, Tenth Revision, Clinical Modification (ICD-10-CM) classifies over 70,000 diagnosis codes into chapters and sections. ESSENCE uses the first three characters (e.g. A00 or J21) into one of 22 chapters, 284 sections, and 1,911 diagnosis code categories. More information on ICD-10-CM can be found [here](https://www.icd10data.com/).

**CCSR Diagnostic Categories**: The Healthcare Cost and Utilization Project (HCUP) Clinical Classifications Software Refined (CCSR) aggregates over 70,000 ICD-10-CM diagnosis codes into 530 meaningful diagnostic categories. More information on the CCSR and mapping schema can be found [here](https://www.hcup-us.ahrq.gov/toolssoftware/ccsr/ccs_refined.jsp).

---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP ESSENCE account password
* Start Date: Start date 
* End Date: Recommended to be at least 2 weeks prior to date of running the report to account for a lag in discharge diagnosis data.
* Site: Geographic region, can be national, a DHHS region, or participating site. Automatically modified to be national. 
* Site Facility: A Facility Level ESSENCE API with the facility or facilities of interest selected. Overwrites site parameter to run the report for a specific facility. 
* Facility Name: Label the report with the facility name(s). 
* Stratification Variable: Can be one of the age, sex, race, or ethnicity classifications in ESSENCE. 
* Add Unknown: TRUE/FALSE option as to whether unknown or not reported categories should be considered. Default is FALSE.
* Top N conditions to rank: Default is 10.
* Avg Weekly Discharge Diagnosis Informative (DDI) Greater than or equal to: Threshold for facility level average weekly discharge diagnosis informative. Helps control for informativeness of the discharge diagnosis field. It is recommended to select an average weekly DDI of 75 or greater. If no value is entered the report will default to not filter facilities by this data quality metric. To remove the average weekly DDI filter enter 0.
* Coefficient of Variance (CoV HasBeenE) Less than or equal to: Threshold for the coefficient of variance (CoV) for ED visits. Helps control for total volume volatility for the selected time period. It is recommended to select a CoV of 40 or less. If no value is entered the report will default to not filter facilities by this data quality metric. To remove the CoV HasBeenE filter enter 1000000. 

---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `ed_icd10_volume` to my existing Rnssp installation
Rnssp::add_rmd_template(template_name = "ed_icd10_volume")
```
---
## Remove this template

```r
# Remove `ed_icd10_volume` from my existing Rnssp installation
Rnssp::remove_rmd_template("ed_icd10_volume")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#emergency-department-icd-10-category-volumes-template-ed_icd10_volume)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/ed_icd10_volume.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
