---
disableToc: false
title: Word Alerts Report
weight: 30
tags: ["word", "alerts", "chief complaint", "discharge diagnosis", "algorithm", "CCQV", "datamart", "nssp", "essence", "template"] 
---

```yaml
name: word_alerts
fullname: Word Alerts Report
description: >
  The word alerts template summarizes daily chief complaints 
  and discharge diagnosis term alerts for a selected syndrome definition. 
  Original Code By: Michael Sheppard. 
  Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic and Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC).
create_dir: true
```
---
## Detailed Description

The Word Alerts Report template (`word_alerts`) summarizes daily chief complaints and discharge diagnosis term alerts for a selected syndrome definition. 

The purpose of the word alert algorithm is to seek anomalous chief complaints free text terms and discharge diagnosis codes relative to a 28-day sliding baseline. 

The current implementation of word alerts in NSSP-ESSENCE is limited to data from the past 7 days. This template provides users the capability of running the word alert algorithm on any selected date range spanning up to 90 days.

---
## Description of Word Alert Algorithm
The ESSENCE word alert algorithm uses 28-day baselines over which unigram and bigram frequencies are computed. As with the univariate temporal anomaly detection algorithms, a 2-day guardband is used to separate the baseline and test date. For each term that occurred in the testing block (test date), contingency tables are formed to count the number of emergency department encounters with the term/code occurring in the chief complaint/discharge diagnosis and the number of emergency department encounters without the term/code in the chief complaint/discharge diagnosis for both the testing and baseline blocks. 

### Two by two contingency table for ABDOMINAL HEADACHE

| Block | Visits with Term | Visits without Term |
| ----- | ---------------- | ------------------- |
| Test Date (Last 24 Hours) | A: 3 | B: 7,243 
| Baseline (28 Days) | C: 59 | D: 231,649 |

To test for anomalous increases in term occurrence on the test date relative to the baseline, either Fisher’s Exact Test or a Chi-squared Test is applied. Fisher’s Exact Test is applied for moderate counts whereas a Chi-squared Test is applied for large counts. Terms are determined to have moderate counts if the number of visits in the baseline with the term is less than 1,000 or if the number of visits on the test date without the term is less than 1,000, i.e., min(B,C) < 1,000. Unigrams and bigrams are considered anomalous if the resulting p-value is less than 0.001. 

---
## Pre-processing of Chief Complaints and Discharge Diagnoses
Pre-processing of chief complaint free text includes removal of punctuation, discharge diagnosis codes, uninformative patterns, medical processing terms, and common first names. Duplicate terms in the same chief complaint and discharge diagnosis are also removed. For discharge diagnosis bigrams, pairings of codes are arranged in alphanumeric order so that permutations of the same codes are not counted separately.

---
## Report Interactivity
This HTML report includes interactive visualizations and tables that accommodate hovering to display additional information. ICD-9 and ICD-10 code descriptions can be displayed by hovering over discharge diagnosis codes. Note that code descriptions for SNOMED codes are not currently available. 


---
## User Inputs

* AMC username and password (securely encrypted)
* Start and end date of query
* Data source: CCQV Datamart Backup (NSSP User Only!) or Facility Location (Full Details – Site-level User Only!)
* Site: Limit to Site (only if using full details for site-level users)
* Definition: currently includes all existing syndromes, subsyndromes, and CCDD categories available in NSSP-ESSENCE
* Has Been Emergency: option to limit data where HasBeenE = Yes (only if using full details for site-level users)
* Document Title: Custom title for HTML output


---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `word_alerts` to my existing Rnssp installation
Rnssp::add_rmd_template(template_name = "word_alerts")
```
---
## Remove this template

```r
# Remove `word_alerts` from my existing Rnssp installation
Rnssp::remove_rmd_template(template_name = "word_alerts")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#word-alerts-report-template-word_alerts)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/word_alerts.zip" icon="fas fa-download" %}}Download this template{{% /button %}}
