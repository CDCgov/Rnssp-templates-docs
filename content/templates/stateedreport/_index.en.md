---
title: State Emergency Department
weight: 5
tags: ["state", "county", "emergency", "department", "glm", "lm", "nssp", "essence", "template"] 
---

```yaml
name: state_ed_report
fullname: Text Analysis Interactive Dashboard
description: >
  An automated Text Analysis Interactive Dashboard template. 
  Original Code By: Michael Sheppard. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic and Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC).
create_dir: true
```
---
## Detailed Description

The state emergency department report template (`state_ed_report`) summarizes trend classification and ESSENCE alerting for the CCDD categories at the state and county level. All trends are reported as percent of daily emergency department visits.

To classify all trends over time, this template fits windowed regression models to moving day baselines where the statistic and p-value resulting from the statistical test are used to define the last day of the baseline as significantly increasing, significantly decreasing, not significant with positive slope, or not significant with negative slope. 

To match the current NSSP-ESSENCE implementation of trend classification, binomial regression models are used for time series of percentages, while linear regression models are used for time series of counts. 

If recent data are pulled, it is best practice to use a 3 day lag to prevent lower counts associated with lags in receiving data from biasing the most recent classification. The significance threshold for p-values is set to 0.01, where trend classification is specified as follows: 

  **Significantly Increasing:** Time term in model is positive and p-value < 0.01
  
  **Significantly Decreasing:** Time term in model is negative and p-value < 0.01 
  
  **Not Significant, Positive Slope:** Time term in model is positive and p-value >= 0.01 
  
  **Not Significant, Negative Slope:** Time term in model is negative and p-value >= 0.01 
  
Note that in instances where the number of encounters for a category in the 12-day time window is less than 10, a model is not fit in order to prevent convergence errors from `glm` and `lm`. In those instances, the trend is classified as **Less than 10 Encounters or Not Reporting**. 

To improve identification of stratifications with recent and anomalous increases in syndromic activity, ESSENCE alerting is overlaid on the percentage trends for each county and CCDD category. These alerts correspond to ESSENCE\'s default alerting algorithm, Poisson/EWMA/Regression Switch, with alerting thresholds 0.05 (yellow) and 0.01 (red). 

Daily stratified alerting indicators and statistics are pulled along with the percentages, numerators, and denominators from the time series data table API (new to ESSENCE as of July 2020).

---
## User Inputs

* AMC username and password (securely encrypted)
* State (data are pulled by hospital state from the Facility Location (Full Details) data source)
* CCDD Categories - currently includes all existing CCDD Categories available in ESSENCE. Users may select as many categories as they choose. The default categories are CLI CC with CLI DD and Coronavirus DD v1, CDC Pneumonia CCDD v1, and CDC COVID-Specific DD v1.
* Start and end date of query
* Time series type - percentages, counts, or percentages *and* counts (default)
* Guard band - number of days the date in consideration is separated from the baseline (default is 3)
* Days Before - length of baseline - 1 (default is 12 - 1 = 11)

---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `state_ed_report` to my existing Rnssp installation
Rnssp::add_rmd_template(template_name = "state_ed_report")
```
---
## Remove this template

```r
# Remove `state_ed_report` from my existing Rnssp installation
Rnssp::remove_rmd_template(template_name = "state_ed_report")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#state-emergency-department-template-state_ed_report)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/state_ed_report.zip" icon="fas fa-download" %}}Download this template{{% /button %}}