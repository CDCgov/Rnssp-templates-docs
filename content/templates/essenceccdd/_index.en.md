---
title: ESSENCE CCDD Categories
weight: 15
tags: ["chief complaint", "discharge diagnosis", "essence", "nssp", "template"] 
---


```yaml
name: essence_ccdd
fullname: Essence CCDD Categories Trends
description: >
  This template generates a trend report of Chief Complaint and Discharge Diagnosis (CCDD) 
  Categories between the MMWR weeks containing the dates you choose. You are able to 
  select as many of the CCDD Categories as you would like to generate this report and are 
  able to control for data quality using the Average Weekly DDI% and CoV(HasBeenE) filters. 
  Original Code By: Kelly Carey. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC). 
create_dir: false
```
---
## Detailed Description

This template (`essence_ccdd`) generates a trend report of Chief Complaint and Discharge Diagnosis (CCDD) Categories between the MMWR weeks containing the dates you choose. Users able to select as many of the CCDD Categories as they would like to knit this template and are able to control for data quality using the Average Weekly DDI\% and CoV(HasBeenE) filters. 

This template depicts Essence CCDD categories by count of visits and percentage of visits, stratified by year. 

Emergency department visits are categorized via free-text queries of the chief complaint and discharge diagnosis fields. The availability and informativeness of these fields varies at a facility level. To ensure enough information is consistently provided to NSSP-ESSENCE for categorization, facilities are included if they met the following standards:

* ***Average Weekly Discharge Diagnosis Informative Percent (DDI%)*** - A measure of how informative the information in the discharge diagnosis fields are over time. The DDI\% is used to control for the quality of the discharge diagnosis field. Facilities were included in the report if they had a DDI greater than or equal to 75% over the past two years.
* ***Data Quality Coefficient of Variation (CoV)*** - A measure of total volume volatility over time. The CoV is used to control for onboarding of new facilities over the time period of interest. Facilities are included if they had a COV less than or equal to 40 over the past two years.

---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP ESSENCE account password
* Start Date: Automatically modified to the start date to be the first day of the MMWR week of the selected start date.
* End Date: recommended to be at least 2 weeks prior to date of running the report to account for a lag in discharge diagnosis data. Automatically modified to be the last day of the MMWR week of the selected end date. 
* CCDD Categories: can be any categories of interest. If no categories are selected the report will default to include all available categories. 
* Avg Weekly Discharge Diagnosis Informative (DDI) Greater than or equal to: Threshold for facility level average weekly discharge diagnosis informative. Helps control for informativeness of the discharge diagnosis field. It is recommended to select an average weekly DDI of 75 or greater. If no value is entered the report will default to not filter facilities by this data quality metric.  
* Coefficient of Variance (CoV HasBeenE) Less than or equal to: Threshold for the coefficient of variance (CoV) for ED visits. Helps control for total volume volatility for the selected time period. It is recommended to select a CoV of 40 or less. If no value is entered the report will default to not filter facilities by this data quality metric. 


---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `essence_ccdd` to my existing Rnssp installation
Rnssp::add_rmd_template("essence_ccdd")
```
---
## Remove this template

```r
# Remove `essence_ccdd` from my existing Rnssp installation
Rnssp::remove_rmd_template("essence_ccdd")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#essence-chief-complaint-and-discharge-diagnosis-categories-template-essence_ccdd)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/essence_ccdd.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
