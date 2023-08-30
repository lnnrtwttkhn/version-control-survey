library("magrittr")
library("data.table")
library("googlesheets4")
library("here")
surveys <- Sys.glob(here::here("surveys", "*yml"))

yml2df <- function(yml_file) {
  survey_yml <- yaml::read_yaml(yml_file)
  survey_df <- data.table::rbindlist(survey_yml, fill = TRUE)
}

df2google <- function(survey_df) {
  googlesheets_link <- "https://docs.google.com/spreadsheets/d/1WImwPLEEixwnPe61Qav6IwveYMY-IDTnxKViKmQEtrI/edit?usp=sharing"
  write_sheet(survey_df, ss = gs4_get(googlesheets_link), sheet = "Sheet1")
}

df2google(yml2df(surveys[1]))
