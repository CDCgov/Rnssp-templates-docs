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

The state emergency department report template (`state_ed_report`) summarizes trend classification and ESSENCE alerting for the CCDD categories at the state and county level. Users can select percentages, counts, or percentages and counts for state and county-level time series. By default, trends are reported as a percent of daily emergency department visits. 

To classify trends over time, this template applies penalized least squares smoothing splines to time series of percentages and Poisson generalized additive models to time series of counts. The slopes of the smoothed data are used to classify daily trajectory statuses into categories of increase, stable, or decrease. Slopes greater than a pre-defined slope cut point of 0.01 are classified as increase, while slopes less than -0.01 are classified as decreasing. Slopes with an absolute value less than or equal to 0.01 are classified as stable. This method is best suited for classification of county-level time series with higher variability in day-to-day trends. 

If you're pulling current data, use a 3-day lag. This best practice prevents lower counts associated with lags in receiving data from biasing the most recent classification. 

To identify stratifications with recent and anomalous increases in syndromic activity, ESSENCE alerting is overlaid on the time series for each county and CCDD category. These alerts correspond to ESSENCE\'s default alerting algorithm, Poisson/EWMA/Regression Switch, with alerting thresholds 0.05 (<span style="color:#BF8F00;font-weight:bold">yellow</span>) and 0.01 (<span style="red;font-weight:bold">red</span>). 

Daily stratified alerting indicators and statistics are pulled along with the percentages, numerators, and denominators from the time series data table application programming interface (API).

---
## User Inputs

* Access and Magagement Center (AMC) username and password (securely encrypted)
* State (data are pulled by hospital state from the Facility Location \[Full Details\] data source
* CCDD Categories — currently includes all CCDD categories available in ESSENCE. Users may select as many categories as they want. The default categories are CLI CC with CLI DD and Coronavirus DD v1, CDC Pneumonia CCDD v1, and CDC COVID-Specific DD v1.
* Query start and end dates
* Time series type — percentages (default), counts, or percentages *and* counts

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
Rnssp::remove_rmd_template("state_ed_report")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#state-emergency-department-template-state_ed_report)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/state_ed_report.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
