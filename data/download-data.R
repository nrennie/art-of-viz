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

# Board games
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-25/details.csv",
  destfile = "data/details.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-25/ratings.csv",
  destfile = "data/ratings.csv")

# Starbucks
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-12-21/starbucks.csv",
  destfile = "data/starbucks.csv")

# UFO sightings
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-06-20/ufo_sightings.csv",
  destfile = "data/ufo_sightings.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-06-20/places.csv",
  destfile = "data/places.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-06-20/day_parts_map.csv",
  destfile = "data/day_parts_map.csv")

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
# still need population breakdown

# Bird sightings
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-01-10/PFW_2021_public.csv",
  destfile = "data/PFW_2021_public.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-01-10/PFW_count_site_data_public_2021.csv",
  destfile = "data/PFW_count_site_data_public_2021.csv")

# Freedom in the world
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-02-22/freedom.csv",
  destfile = "data/freedom.csv")

# Lemurs
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-08-24/lemur_data.csv",
  destfile = "data/lemur_data.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-08-24/taxonomy.csv",
  destfile = "data/taxonomy.csv")

## R vignettes
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-03-15/bioc.csv",
  destfile = "data/bioc.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-03-15/cran.csv",
  destfile = "data/cran.csv")

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

## Premier league
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-04-04/soccer21-22.csv",
  destfile = "data/soccer21-22.csv")

## Global human day
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-09-12/all_countries.csv",
  destfile = "data/all_countries.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-09-12/country_regions.csv",
  destfile = "data/country_regions.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-09-12/global_human_day.csv",
  destfile = "data/global_human_day.csv")
download.file(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-09-12/global_economic_activity.csv",
  destfile = "data/global_economic_activity.csv")






























