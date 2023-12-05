# Survival-Analysis-Documentation
R code and documentation for Survival Analysis

## Paper 1: Eliminating Survivor Bias in Two-stage Instrumental Variable Estimators
### Code file name: surv_analysis.rmd
Idea: This paper discusses issues related to survivor bias in Mendelian randomization studies, which typically focus on elderly populations. Survivor bias occurs when the individuals included in the study are not representative of the entire population due to the exclusion of those who did not survive until the onset of the study.

The concern raised in the abstract is that instrumental variable analysis, commonly used in Mendelian randomization studies, may be sensitive to survivor bias. Instrumental variables are used to establish causal relationships between an exposure (e.g., a genetic variant) and an outcome (e.g., mortality) by mimicking a randomized controlled trial. However, if the instrumental variable conditions are violated for the selective population of individuals who survived until the study began, it can introduce bias into the results.

The paper proposes a two-stage instrumental variable estimator to address this issue under certain assumptions. Specifically, the conditions for instrumental variables are suggested to continue holding within certain risk sets of individuals who are still alive at a given age. The additivity assumptions imply that the instrument and unmeasured confounders exert additive effects on the exposure, and the exposure and unmeasured confounders exert additive effects on the hazard of death.
