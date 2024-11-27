social_caption <- function(linkedin = "nicola-rennie",
                           bluesky = "nrennie",
                           github = "nrennie",
                           icon_color = "black",
                           font_color = "black",
                           font_family = "sans") {
  icon_df <- data.frame(
    icons = c("&#xf08c;", "&#xe671;", "&#xf09b;"),
    socials = c(linkedin, bluesky, github)
  )
  icon_df <- na.omit(icon_df)
  
  # Inner function to join icon and text
  glue_icon <- function(icon, social) {
    glue::glue(
      "<span style='font-family:\"Font Awesome 6 Brands\"; color:{icon_color};'>{icon} </span>&nbsp; <span style='font-family:{font_family}; color:{font_color};'>{social} </span>&emsp;"
    )
  }
  
  # Map over all icons
  caption <- purrr::map2(
    .x = icon_df$icons,
    .y = icon_df$socials,
    .f = ~glue_icon(.x, .y)
  ) |> 
    purrr::as_vector() |> 
    stringr::str_flatten()

  return(caption)
}
