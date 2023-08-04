# This file contains the theme for the plots in the paper



  ##' @importFrom sysfonts font_add
  ##' @importFrom showtext showtext_auto
  ##' @export
  .load.lmroman <- function() {
    wd <- getwd()
    font_path <- system.file("fonts", package="rpapers")
    setwd(font_path)
    font_add(family = "lmroman",
             regular = sub("\\..*", "", "lmroman10_regular.otf"),
             bold = sub("\\..*", "","lmroman10_bold.otf"),
             italic = sub("\\..*", "","lmroman10_italic.otf"),
             bolditalic = sub("\\..*", "","lmroman10_bolditalic.otf"),
             symbol = sub("\\..*", "","lmroman10_math.otf"))
    showtext_auto()
    setwd(wd)
  }


#' Paper Plot Theme
#'
#' Set custom theme for plots that is well suited for papers
#'
#' @return None
#' @import ggplot2
#' @importFrom sysfonts font_add
#' @importFrom proto proto
#' @import showtext
#' @export
paper_plot_theme <- function() {
    .load.lmroman()
    # Load custom fonts
    # set theme
    ggplot2::theme_set(
        ggplot2::theme(
            plot.title = ggplot2::element_text(face = "bold", size = rel(1.1), hjust = .5, colour = "#130f09"),
            text = ggplot2::element_text(),
            panel.background = ggplot2::element_rect(fill =NA, color = NA, linewidth = 0),
            plot.background = ggplot2::element_rect(fill = NA, color = NA, linewidth = 0, linetype = 1),
            panel.border = ggplot2::element_rect("#999999", fill = "transparent"),
            panel.grid.minor.y = ggplot2::element_line(colour = "#eeeeee", linewidth = 0.5),
            panel.grid.major = ggplot2::element_line(colour = "#eeeeee", linewidth = 0.5),
            panel.grid.minor = ggplot2::element_blank(),
            axis.ticks = ggplot2::element_blank(),
            axis.text = ggplot2::element_text(size = 6),
            axis.title.x = ggplot2::element_text(vjust = -.2),
            axis.title.y = ggplot2::element_text(angle = 90, vjust = 2),
            axis.text.y = ggplot2::element_text(vjust = 0.2, hjust = 0.95),
            axis.text.x = ggplot2::element_text(margin = margin(0, 0, 0, 0)),
            axis.title = ggplot2::element_text(face = "bold", size = rel(1)),
            #plot.title = element_text(size = 10, face = "bold", hjust = 0, margin = margin(0, 0, 0, b = 5)),
            plot.subtitle = ggplot2::element_text(size = 8, hjust = 0, margin = margin(0, 0, 0, b = 2)),
            plot.caption = ggplot2::element_text(size = 8, hjust = 1),
            legend.position = "bottom",
            legend.background = ggplot2::element_rect(fill = "transparent", colour = NA, linewidth = 0),
            legend.justification = .5,
            legend.title = ggplot2::element_text(face = "italic", size = 8, margin = ggplot2::margin(b = 0, 0, 0, 0), hjust = .5),
            legend.direction = "horizontal",
            legend.text = ggplot2::element_text(size = 8, margin = ggplot2::margin(l = 0, 0, 0, 0)),
            legend.box.spacing = ggplot2::unit(0, "cm"),
            legend.box.margin = ggplot2::margin(0, 0, 0, 0),
            plot.margin = ggplot2::margin(5, 5, 5, 5),
            legend.key = ggplot2::element_rect(fill = "transparent", color = "transparent"),
            legend.key.size = ggplot2::unit(.3, "cm"),
            strip.background = ggplot2::element_rect(fill = "#ddd8d8", color = "#130f09", linewidth = 0.25),
            strip.text = ggplot2::element_text(face = "bold", size = 8, margin = margin(t = 2, b = 2, 0, 0))
        )
    )
}





