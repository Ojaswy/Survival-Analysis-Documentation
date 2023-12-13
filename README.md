# Survival-Analysis-Documentation
R code and documentation for Survival Analysis 

## Paper 1: Eliminating Survivor Bias in Two-stage Instrumental Variable Estimators
### Code file name: surv_analysis.rmd
Idea: This paper discusses issues related to survivor bias in Mendelian randomization studies, which typically focus on elderly populations. Survivor bias occurs when the individuals included in the study are not representative of the entire population due to the exclusion of those who did not survive until the onset of the study.

The concern raised in the abstract is that instrumental variable analysis, commonly used in Mendelian randomization studies, may be sensitive to survivor bias. Instrumental variables are used to establish causal relationships between an exposure (e.g., a genetic variant) and an outcome (e.g., mortality) by mimicking a randomized controlled trial. However, if the instrumental variable conditions are violated for the selective population of individuals who survived until the study began, it can introduce bias into the results.

The paper proposes a two-stage instrumental variable estimator to address this issue under certain assumptions. Specifically, the conditions for instrumental variables are suggested to continue holding within certain risk sets of individuals who are still alive at a given age. The additivity assumptions imply that the instrument and unmeasured confounders exert additive effects on the exposure, and the exposure and unmeasured confounders exert additive effects on the hazard of death.


## Paper 2: Instrumental variable additive hazards models
### Code file name: iv_additive_hazard.R
Idea: This paper discusses the application of instrumental variable (IV) methods in non-experimental studies, particularly focusing on estimating the causal effects of medical interventions in the context of censored data problems. Censored data arises when the observation of an event (such as death or treatment failure) is incomplete, either due to the study's design or other factors. It also notes that IV methods are widely used in non-experimental settings to estimate treatment effects, especially when important confounding factors are unobserved. However, there has been a limited extension of these methods to address censored data issues, specifically in the context of the proportional hazards model. In response to this gap, the abstract proposes using the additive hazards formulation for IV analyses with censored data. The additive hazards model is a survival analysis model that allows for the examination of the cumulative hazard of an event over time. The authors assume linear structural equation models for the hazard function and develop a closed-form, two-stage estimator for the causal effect within the additive hazard model.


### Difference between the ideas
While both abstracts involve instrumental variable methods, the first one addresses survivor bias in Mendelian randomization studies in elderly populations, emphasizing the sensitivity to bias due to violations of instrumental variable conditions. In contrast, the second abstract addresses the challenges of applying instrumental variable methods to censored data in the context of estimating causal effects of medical interventions, with a focus on the proportional hazards model and the additive hazards formulation. 

## Paper 3: Instrumental variables estimation of exposure effects on a time-to-event endpoint using structural cumulative survival models
### Code file name: iv_paper.Rmd
This R code appears to implement a novel approach to estimating the effect of an exposure on time-to-event outcomes using instrumental variables. The method is applied and illustrated in the context of a Mendelian randomization study investigating the effect of diabetes on mortality, as well as in an analysis of potential benefits from breast cancer screening on subsequent breast cancer mortality. The code implements a novel approach for estimating the effect of an exposure on an outcome using instrumental variables (IV) in the context of time-to-event data with censoring. This approach addresses the limitations of existing methods by directly parameterizing the time-varying effects of the exposure on the survival function within a class of structural cumulative survival models.
