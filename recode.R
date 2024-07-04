data_clean <- data_clean %>%
  mutate(
    Gender = recode(Gender, "female" = 0, "male" = 1, "other" = 2),
    family_history = recode(family_history, "No" = 0, "Yes" = 1),
    treatment = recode(treatment, "No" = 0, "Yes" = 1),
    work_interfere = recode(work_interfere, "Never" = 0, "Rarely" = 1, "Sometimes" = 2, "Often" = 3),
    no_employees = recode(no_employees, "1-5" = 0, "6-25" = 1, "26-100" = 2, "100-500" = 3, "500-1000" = 4, "More than 1000" = 5),
    remote_work = recode(remote_work, "No" = 0, "Yes" = 1),
    tech_company = recode(tech_company, "No" = 0, "Yes" = 1),
    benefits = recode(benefits, "No" = 0, "Don't know" = 1, "Yes" = 2),
    care_options = recode(care_options, "No" = 0, "Not sure" = 1, "Yes" = 2),
    wellness_program = recode(wellness_program, "No" = 0, "Don't know" = 1, "Yes" = 2),
    seek_help = recode(seek_help, "No" = 0, "Don't know" = 1, "Yes" = 2),
    anonymity = recode(anonymity, "No" = 0, "Don't know" = 1, "Yes" = 2),
    leave = recode(leave, "Very difficult" = 0, "Somewhat difficult" = 1, "Don't know" = 2, "Somewhat easy" = 3, "Very easy" = 4),
    mental_health_consequence = recode(mental_health_consequence, "No" = 0, "Maybe" = 1, "Yes" = 2),
    phys_health_consequence = recode(phys_health_consequence, "No" = 0, "Maybe" = 1, "Yes" = 2),
    coworkers = recode(coworkers, "No" = 0, "Some of them" = 1, "Yes" = 2),
    supervisor = recode(supervisor, "No" = 0, "Some of them" = 1, "Yes" = 2),
    mental_health_interview = recode(mental_health_interview, "No" = 0, "Maybe" = 1, "Yes" = 2),
    phys_health_interview = recode(phys_health_interview, "No" = 0, "Maybe" = 1, "Yes" = 2),
    mental_vs_physical = recode(mental_vs_physical, "No" = 0, "Don't know" = 1, "Yes" = 2),
    obs_consequence = recode(obs_consequence, "No" = 0, "Yes" = 1)
  )
