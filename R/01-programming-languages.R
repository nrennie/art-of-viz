# Load packages -----------------------------------------------------------

library(ggplot2)


# Load data ---------------------------------------------------------------

languages <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-03-21/languages.csv")


# Data wrangling ----------------------------------------------------------

plot_data <- languages |>
  dplyr::filter(type == "pl") |>
  dplyr::filter(line_comment_token %in% c("//", "#", ";")) |>
  dplyr::select(title, appeared, line_comment_token, last_activity, language_rank) |>
  tidyr::drop_na() |>
  dplyr::mutate(label = paste("Comment token:", line_comment_token)) |>
  dplyr::group_by(label) |>
  dplyr::slice_head(n = 10) |>
  dplyr::mutate(n = factor(dplyr::row_number(), levels = 1:10)) |>
  dplyr::ungroup() |>
  dplyr::select(label, n, title, appeared, last_activity, language_rank) |>
  tidyr::pivot_longer(
    cols = c(appeared, last_activity),
    names_to = "type",
    values_to = "year"
  )

# Initial plot ------------------------------------------------------------

basic_plot <- ggplot(data = plot_data) +
  geom_line(mapping = aes(x = year, y = n, group = n)) +
  geom_point(mapping = aes(x = year, y = n)) +
  facet_wrap(~label)
basic_plot


# Re-order and scales -----------------------------------------------------

basic_plot +
  scale_y_discrete(limits = rev) +
  scale_x_continuous(
    breaks = c(1970, 1990, 2010, 2030),
    limits = c(1930, 2030),
    expand = c(0, 0)
  )


# Define colours ----------------------------------------------------------

bg_col <- "grey5"
main_col <- "#66FF00"


# Add colour styling ------------------------------------------------------

basic_plot <- ggplot(data = plot_data) +
  geom_line(
    mapping = aes(x = year, y = n, group = n),
    colour = main_col
  ) +
  geom_point(
    mapping = aes(x = year, y = n),
    colour = main_col,
    fill = bg_col,
    pch = 22
  ) +
  facet_wrap(~label) +
  # add scales back in
  scale_y_discrete(limits = rev) +
  scale_x_continuous(
    breaks = c(1970, 1990, 2010, 2030),
    limits = c(1930, 2030),
    expand = c(0, 0)
  )
basic_plot


# Add text as variables ---------------------------------------------------

# Text
title <- "Programming Languages"
subtitle <- "Of the 4,303 programming languages listed in the Programming Language DataBase, 205 use //, 101 use #, and 64 use ;
to define which lines are comments. 3,831 languages do not have a comment token listed."
caption <- "Data: Programming Language DataBase | Graphic: N. Rennie"

text_plot <- basic_plot +
  labs(
    title = title,
    subtitle = subtitle,
    caption = caption
  )
text_plot


# Define text and fonts ---------------------------------------------------

# Fonts
sysfonts::font_add_google("VT323", "vt")
sysfonts::font_add_google("Share Tech Mono", "share")
showtext::showtext_auto()
showtext::showtext_opts(dpi = 300)

# Font variables
body_font <- "share"
title_font <- "vt"


# Basic theming -----------------------------------------------------------

theme_plot1 <- text_plot +
  theme_minimal(
    base_size = 12,
    base_family = body_font
  )

# better styling
theme_plot1 +
  theme(
    plot.background = element_rect(
      fill = bg_col,
      colour = bg_col
    ),
    panel.background = element_rect(
      fill = bg_col,
      colour = alpha(main_col, 0.5),
      linewidth = 0.4
    ),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(
      colour = alpha(main_col, 0.5),
      linewidth = 0.2
    ),
    panel.grid.major.y = element_blank(),
    strip.text = element_text(
      colour = main_col
    ),
    axis.text.y = element_blank(),
    axis.text.x = element_text(
      colour = main_col,
      vjust = 2
    ),
    plot.title = element_text(
      colour = main_col,
      family = title_font
    ),
    plot.subtitle = element_text(
      colour = main_col,
      margin = margin(b = 5)
    ),
    plot.caption = element_text(
      colour = main_col,
      margin = margin(b = 5),
      hjust = 0
    ),
    axis.ticks = element_blank(),
    plot.margin = margin(10, 15, 5, 0)
  )

# make title bigger
# stop subtitle running off
# intro to ggtext
# highlight only some lines
theme_plot2 <- theme_plot1 +
  theme(
    plot.background = element_rect(
      fill = bg_col,
      colour = bg_col
    ),
    panel.background = element_rect(
      fill = bg_col,
      colour = alpha(main_col, 0.5),
      linewidth = 0.4
    ),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(
      colour = alpha(main_col, 0.5),
      linewidth = 0.2
    ),
    panel.grid.major.y = element_blank(),
    strip.text = element_text(
      colour = main_col
    ),
    axis.text.y = element_blank(),
    axis.text.x = element_text(
      colour = main_col,
      vjust = 2
    ),
    plot.title = element_text(
      colour = main_col,
      family = title_font,
      size = 24
    ),
    plot.subtitle = ggtext::element_textbox_simple(
      colour = main_col,
      lineheight = 2,
      margin = margin(b = 5)
    ),
    plot.caption = element_text(
      colour = main_col,
      margin = margin(b = 5),
      hjust = 0
    ),
    axis.ticks = element_blank(),
    plot.margin = margin(10, 15, 5, 0)
  )
theme_plot2

# add labels of code language
theme_plot2 +
  geom_text(
    mapping = aes(x = 1930, y = n, label = title),
    family = body_font,
    vjust = 0.5,
    hjust = 0,
    colour = main_col
  )

# make a better label
plot_data <- plot_data |>
  mutate(rank_label = glue::glue("{title}\nRank: {language_rank}"))

theme_plot2 +
  geom_text(
    data = plot_data,
    mapping = aes(x = 1930, y = n, label = rank_label),
    family = body_font,
    vjust = 0.5,
    hjust = 0,
    colour = main_col
  )

# make an HTML label
plot_data <- plot_data |>
  dplyr::mutate(rank_label = glue::glue("<p>{title}</p><p style='font-size:8pt;'>(Rank: {language_rank})</p>"))

# plot with geom_richtext
theme_plot2 +
  ggtext::geom_richtext(
    data = plot_data,
    mapping = aes(x = 1930, y = n, label = rank_label),
    family = body_font,
    fill = "transparent",
    label.colour = "transparent",
    lineheight = 0.1,
    vjust = 0.5,
    hjust = 0,
    colour = main_col
  )

# save
ggsave("plots/programming_languages.png",
  width = 6,
  height = 4,
  units = "in"
)
