---
title: Syndrome Definition Evaluation
weight: 25
tags: ["syndrome", "definition", "evaluation", "nssp", "essence", "template", "demo"] 
---

```yaml
name: syndrome_eval
fullname: Syndrome Definition Evaluation
description: >
  An automated report template that allows ESSENCE users 
  to evaluate the data details (line level) results of 
  one, two, or three syndrome definitions at a time. 
  Original Script By: Sara Chronister (Maricopa County, AZ). 
  Revamped and Adapted to the Rnssp Package by: Gbedegnon Roseric Azondekon. 
  National Syndromic and Surveillance Program (NSSP). 
  Centers for Disease Control and Prevention (CDC).
create_dir: true
```
---
## Detailed Description

The Syndrome Definition Evaluation template (`syndrome_eval`) allows ESSENCE users to evaluate the data details (line level) results of one, two, or three syndrome definitions at a time.

This template parses syndrome terms, identifies their type and count their CCDD matches.

The syndrome definition evaluation template generates:

* A table summarizing individual definition information by syndrome definition
* An interactive visualization comparing visits by syndrome definition over time
* A comparative bar chart of total visits identified by all syndrome definitions combined
* A summary table of the number and percent of identified visits captured by each observed combination of definitions
* A Venn diagram, an Euler diagram, and an upset plot as visual representations of the number of identified visits captured by each observed combination of definitions
* Summary plots of the top five occurring terms for each definition and each field of interest

---
## User Inputs

* NSSP Username: NSSP ESSENCE account username
* NSSP Password: NSSP ESSENCE account password
* Site: A participating site
* Start Date: Automatically modified to be the first day of the MMWR week of the selected start date
* End Date: Recommended to be at least 2 weeks prior to date of running the report to account for a lag in discharge diagnosis data. Automatically modified to be the last day of the MMWR week of the selected end date. 
* Has been Emergency: TRUE/FALSE option for limiting to emergency department visits
* "Chunk data pull (per day)?: TRUE/FALSE option for pull the data by chunks (time resolution: one day)
* CCDD Category (Up to 3): When more than 3 are supplied, only the first 3 are considered by the template
* Custom Query 1: Free Text Query
* Custom Query Label 1: A string labeling Custom Query 1
* Custom Query 2: Free Text Query
* Custom Query Label 1: A string labeling Custom Query 2
* Custom Query 3: Free Text Query
* Custom Query Label 3: A string labeling Custom Query 3
* A title for the report
* Export Data: TRUE/FALSE option as to whether to save export and save datasets on the disk. When TRUE, a folder named `Output` is automatically created in the working directory and receives exported data in .csv format.

---
## Output

When knit with parameters, this template generates a report in HTML format.

---
## Add this template

```r
# Add `syndrome_eval` to my existing Rnssp installation
Rnssp::add_rmd_template("syndrome_eval")
```
---
## Remove this template

```r
# Remove `syndrome_eval` from my existing Rnssp installation
Rnssp::remove_rmd_template("syndrome_eval")
```

---
[**Latest Update!**](https://cdcgov.github.io/Rnssp-rmd-templates/changelogs/#syndrome-definition-evaluation-template-syndrome_eval)

*For questions, ideas for improvement/collaboration, or attribution, please submit an issue [here](https://github.com/CDCgov/Rnssp-rmd-templates/issues).*

---
{{% button href="https://github.com/CDCgov/Rnssp-rmd-templates/raw/master/zip/syndrome_eval.zip" icon="fas fa-download" %}}Download this template{{% /button %}}