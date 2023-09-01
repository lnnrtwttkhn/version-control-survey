library("formr")
library("here")
library("ggplot2")
source(here::here("code", ".passwords.R"))

survey_name <- "surveytest"
formr::formr_connect(credentials$email, credentials$password)
survey_items <- formr_items(survey_name = survey_name, host = "https://formr.org")
survey_data <- formr::formr_raw_results(survey_name = survey_name)

ggplot(data = survey_data, aes(x = version)) +
  geom_bar(stat = "count") +
  geom_text(stat = "count", aes(label = after_stat(count)), vjust = -1) +
  xlab("Responses") +
  ylab("Count")
