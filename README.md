This repository houses de-identified clinical and neuroimaging data that was used in the publication titled: "Predictors Beyond the Lesion: Health and Demographic Factors Associated with Aphasia Severity" accepted to Cortex in 2022. Use of this data must first be brought to the attention of corresponding author Lisa Johnson (LJ4@email.sc.edu) or PI on the primary grant used to fund this data Julius Fridriksson (fridriks@mailbox.sc.edu). Please contact the corresponding author for any questions regarding this data or accompanying scripts.<br>
<br>
---<br>
<br>
**File information:**<br>
Included in this repository are the following files:<br>
  </t>-DeID_Data_cortex.xlsx : a spreadsheet of de-identified behavioral and health information. Data dictionary below.<br>
   </t> </t>**wab_aq_set1 :** Western Aphasia Battery (WAB) AQ score (range = 0-100)<br>
    </t></t>**income_censusb :** Household income as per US census bureau (proxy measure using patient-provided zip codes)<br>
  </t>  </t>**WAIS_SCALED :** Age-adjusted WAIS matrices score<br>
  </t> </t>**How.many.years.of.education.have.you.completed..y :** Total years of education (12=high school graduate)<br>
  </t> </t>**age_at_stroke :** Age of patient at time of stroke<br>
  </t> </t>**transformed_timepoststroke2 :** Log transformed (due to heteroskedastic data) months post-stroke onset at time of assessment<br>
 </t>  </t>**residualsROIsLHdamage :** WAB AQ scores after controlling for damage to critical ROIs and total lesion volume<br>
  </t> </t>**Have.you.ever.been.diagnosed.with.diabetes..x :** Presence of diabetes = 1; no diabetes = 0<br>
  </t> </t>**exercise_post :** rate of exercise (>30 minutes) per week<br>
  </t> </t>**Fazekas :** Total white matter hyperintensity rating (range = 0-6)<br>
   </t></t>**How.many.strokes.have.you.had..x :** Total number of strokes a person had at the time of assessment<br>
  </t> </t>**BMI :** Body mass index at time of assessment<br>
  </t> </t>**lesvol :** Total lesion volume in cubic mm<br>
  </t> </t>**propdamage_both_rois :** proportion damage to critical regions of interest<br>
   <br>
  -FiguresScript.R : R script for creating figures included in the manuscript<br>
  -StandardLesionDrawings.zip : Zip drive of lesion masks for all participants in standard space<br>
