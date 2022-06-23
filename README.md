This repository houses de-identified clinical and neuroimaging data that was used in the publication titled: "Predictors Beyond the Lesion: Health and Demographic Factors Associated with Aphasia Severity" accepted to Cortex in 2022. Use of this data must first be brought to the attention of corresponding author Lisa Johnson (LJ4@email.sc.edu) or PI on the primary grant used to fund this data Julius Fridriksson (fridriks@mailbox.sc.edu). Please contact the corresponding author for any questions regarding this data or accompanying scripts.

---

**File information:**
Included in this repository are the following files:
  -DeID_Data_cortex.xlsx : a spreadsheet of de-identified behavioral and health information. Data dictionary below.
    **wab_aq_set1 :** Western Aphasia Battery (WAB) AQ score (range = 0-100)
    **income_censusb :** Household income as per US census bureau (proxy measure using patient-provided zip codes)
    **WAIS_SCALED :** Age-adjusted WAIS matrices score
   **How.many.years.of.education.have.you.completed..y :** Total years of education (12=high school graduate)
   **age_at_stroke :** Age of patient at time of stroke
   **transformed_timepoststroke2 :** Log transformed (due to heteroskedastic data) months post-stroke onset at time of assessment
   **residualsROIsLHdamage :** WAB AQ scores after controlling for damage to critical ROIs and total lesion volume
   **Have.you.ever.been.diagnosed.with.diabetes..x :** Presence of diabetes = 1; no diabetes = 0
   **exercise_post :** rate of exercise (>30 minutes) per week
   **Fazekas :** Total white matter hyperintensity rating (range = 0-6)
   **How.many.strokes.have.you.had..x :** Total number of strokes a person had at the time of assessment
   **BMI :** Body mass index at time of assessment
   **lesvol :** Total lesion volume in cubic mm
   **propdamage_both_rois :** proportion damage to critical regions of interest
   
  -FiguresScript.R : R script for creating figures included in the manuscript
  -StandardLesionDrawings.zip : Zip drive of lesion masks for all participants in standard space
