# This file contains the theme for the plots in the paper



  #' @importFrom sysfonts font_add
  #' @importFrom showtext showtext_auto
  .load.lmroman <- function() {
    wd <- getwd()
    font_path <- system.file("fonts", package="rpapers")
    setwd(font_path)
    font_add(family = "lmroman",
             regular = "lmroman10_regular.otf",
             bold = "lmroman10_bold.otf",
             italic = "lmroman10_italic.otf",
             bolditalic = "lmroman10_bolditalic.otf",
             symbol = "lmroman10_math.otf")
    showtext_auto()
    setwd(wd)
}


#' Paper Plot Theme
#'
#' Set custom theme for plots that is well suited for papers
#'
#' @return None
#' @importFrom ggplot2 theme element_text element_rect element_line element_blank
#' rel margin unit
#' @importFrom sysfonts font_add
#' @export
paper_theme <- function() {
    # Load custom fonts
    .load.lmroman()
  theme(
    # text
    text = element_text(family = "lmroman", color = "#130f09"),
    # plot
    plot.title = element_text(face = "bold", size = rel(.9), hjust = .5,
                              color = "#130f09"),
    plot.subtitle = element_text(size = rel(.7), hjust = .5),
    plot.caption = element_text(size = rel(.7), hjust = 1),
    plot.background = element_rect(fill = NA, color = NA),
    # panel
    panel.background = element_rect(fill = NA, color = NA),
    panel.border = element_rect("#989898", fill = "transparent", linewidth = rel(2)),
    panel.grid.major = element_line(colour = "#eeeeee", linewidth = rel(1.2)),
    panel.grid.minor = element_blank(),
    # axis
    axis.ticks = element_line(color = "#989898"),
    axis.text = element_text(size = rel(.8)),
    axis.title.x = element_text(vjust = -.2),
    axis.title.y = element_text(angle = 90, vjust = 2),
    axis.text.y = element_text(size = rel(.7), vjust = .5,
                               margin = margin(r = 2)),
    axis.text.x = element_text(size = rel(.7), margin = margin(2, 0, 0, 0)),
    axis.title = element_text(face = "bold", size = rel(.8)),
    # legend
    legend.position = "bottom",
    legend.background = element_rect(fill = "transparent", color = NA),
    legend.title = element_text(face = "italic", size = rel(.8), hjust = .5),
    legend.direction = "horizontal",
    legend.text = element_text(size = rel(.8)),
    legend.box.spacing = unit(.2, "cm"),
    legend.key = element_rect(fill = "transparent", color = "transparent"),
    legend.key.size = unit(.3, "cm"),
    # facets
    strip.background = element_rect(fill = "#ddd8d8", color = "#484848", linewidth = rel(.8)),
    strip.text = element_text(face = "bold", size = rel(.7),
                              margin = margin(t = 2.5, b = 2.5))
  )
}



