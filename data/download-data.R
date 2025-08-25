# Programming languages
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-03-21/languages.csv",
  destfile = "data/languages.csv"
)

# UK museums
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-11-22/museums.csv",
  destfile = "data/museums.csv"
)

# Bee colony losses
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-11/colony.csv",
  destfile = "data/colony.csv"
)
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-11/stressor.csv",
  destfile = "data/stressor.csv"
)

# Animal surrenders
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2025/2025-03-04/longbeach.csv",
  destfile = "data/longbeach.csv"
)

# Canadian Wind Turbines
wind_turbines <- openxlsx::read.xlsx("https://ftp.cartes.canada.ca/pub/nrcan_rncan/Wind-energy_Energie-eolienne/wind_turbines_database/Wind_Turbine_Database_FGP.xlsx",sheet=1)
write.csv(wind_turbines, "data/wind_turbines.csv", row.names = FALSE)

# Cats
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-01-31/cats_uk.csv",
  destfile = "data/cats_uk.csv"
)
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-01-31/cats_uk_reference.csv",
  destfile = "data/cats_uk_reference.csv"
)

# Nobel Prize Laureates
nobel_physics <- read.csv("http://api.nobelprize.org/2.1/laureates?limit=250&nobelPrizeCategory=phy&format=csv&csvLang=en")
write.csv(nobel_physics, "data/nobel_physics.csv", row.names = FALSE)
nobel_peace <- read.csv("http://api.nobelprize.org/2.1/laureates?limit=250&nobelPrizeCategory=pea&format=csv&csvLang=en")
write.csv(nobel_peace, "data/nobel_peace.csv", row.names = FALSE)

# Lemurs
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-08-24/lemur_data.csv",
  destfile = "data/lemur_data.csv"
)
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-08-24/taxonomy.csv",
  destfile = "data/taxonomy.csv"
)

# R package use
files_to_check <-
  funspotr::list_files_github_repo("nrennie/tidytuesday",
    branch = "main"
  )
r_pkgs <- files_to_check |>
  dplyr::filter(stringr::str_detect(relative_paths, "2023")) |>
  funspotr::spot_funs_files(
    show_each_use = TRUE
  ) |>
  funspotr::unnest_results()
write.csv(r_pkgs, "data/r_pkgs.csv", row.names = FALSE)

# Doctors in an ageing population
library(owidR)
doctors <- owid("physicians-per-1000-people")
write.csv(doctors, "data/doctors.csv", row.names = FALSE)

# Time Zones
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-03-28/timezones.csv",
  destfile = "data/timezones.csv"
)

# US House Elections
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-11-07/house.csv",
  destfile = "data/house.csv"
)