# Programming languages
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-03-21/languages.csv",
  destfile = "data/languages.csv")

# Bee colony losses
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-11/colony.csv",
  destfile = "data/colony.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-11/stressor.csv",
  destfile = "data/stressor.csv")

# UK museums
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-11-22/museums.csv",
  destfile = "data/museums.csv")

# Cats
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-01-31/cats_uk.csv",
  destfile = "data/cats_uk.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-01-31/cats_uk_reference.csv",
  destfile = "data/cats_uk_reference.csv")

# Doctors in an ageing population
library(owidR)
doctors <- owid("physicians-per-1000-people")
write.csv(doctors, "data/doctors.csv", row.names = FALSE)

# Time Zones
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-03-28/timezones.csv",
  destfile = "data/timezones.csv")

# US House Elections
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-11-07/house.csv",
  destfile = "data/house.csv")

# Lemurs
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-08-24/lemur_data.csv",
  destfile = "data/lemur_data.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-08-24/taxonomy.csv",
  destfile = "data/taxonomy.csv")

## Global seafood
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-12/aquaculture-farmed-fish-production.csv",
  destfile = "data/aquaculture-farmed-fish-production.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-12/capture-fisheries-vs-aquaculture.csv",
  destfile = "data/capture-fisheries-vs-aquaculture.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-12/capture-fishery-production.csv",
  destfile = "data/capture-fishery-production.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-12/fish-and-seafood-consumption-per-capita.csv",
  destfile = "data/fish-and-seafood-consumption-per-capita.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-12/fish-stocks-within-sustainable-levels.csv",
  destfile = "data/fish-stocks-within-sustainable-levels.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-12/global-fishery-catch-by-sector.csv",
  destfile = "data/global-fishery-catch-by-sector.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-12/seafood-and-fish-production-thousand-tonnes.csv",
  destfile = "data/seafood-and-fish-production-thousand-tonnes.csv")

## Technology adoption
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-07-19/technology.csv",
  destfile = "data/technology.csv")
