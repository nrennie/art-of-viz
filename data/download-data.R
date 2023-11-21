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
























