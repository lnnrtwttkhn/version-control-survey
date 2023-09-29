library("magrittr")
library("data.table")
library("googlesheets4")
library("here")
library("optparse")

surveys <- Sys.glob(here::here("surveys", "*yml"))
sheets <- yaml::read_yaml(Sys.glob(here::here("_sheets.yml")))

get_input <- function() {
  option_list <- list(
    optparse::make_option(
      c("-s", "--survey"),
      type = "character",
      default = NULL,
      help = "specify the survey name",
      metavar = "character"
      )
  )
  opt_parser <- optparse::OptionParser(option_list = option_list)
  opt <- optparse::parse_args(opt_parser)
  if (is.null(opt$survey)){
    print_help(opt_parser)
    stop("At least one argument must be supplied (input file).n", call.=FALSE)
  }
  return(opt)
}

yml2df <- function(yml_file) {
  survey_yml <- yaml::read_yaml(yml_file)
  survey_df <- data.table::rbindlist(survey_yml, fill = TRUE)
}

df2google <- function(survey_df, sheet_link) {
  write_sheet(survey_df, ss = gs4_get(sheet_link), sheet = "Sheet1")
}

opt <- get_input()
survey <- surveys[grepl(x = surveys, pattern = opt$survey)]
sheet_link <- sheets[[opt$survey]]
df2google(yml2df(yml_file = survey), sheet_link = sheet_link)
