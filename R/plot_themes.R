# This file contains the theme for the plots in the paper




#' Paper Plot Theme
#'
#' Set custom theme for plots that is well suited for papers
#'
#' @return None
#' @export
paper_plot_theme <- function() {
    # Load custom fonts
    font_add(
      family = "lmroman",
      regular = "inst/Fonts/lmroman10_regular.otf",
      bold = "inst/Fonts/lmroman10_bold.otf",
      italic = "isnt/Fonts/lmroman10_italic.otf",
      bolditalic = "inst/Fonts/lmroman10_bolditalic.otf",
      symbol = "Fonts/lmroman10_math.otf"
    )
    # set theme
    theme_set(
        theme(
            plot.title = element_text(face = "bold", size = rel(1.1), hjust = .5, colour = "#130f09"),
            text = element_text(),
            panel.background = element_rect(fill =NA, color = NA, linewidth = 0),
            plot.background = element_rect(fill = NA, color = NA, linewidth = 0, linetype = 1),
            panel.border = element_rect("#999999", fill = "transparent"),
            panel.grid.minor.y = element_line(colour = "#eeeeee", linewidth = 0.5),
            panel.grid.major = element_line(colour = "#eeeeee", linewidth = 0.5),
            panel.grid.minor = element_blank(),
            axis.ticks = element_blank(),
            axis.text = element_text(size = 6),
            axis.title.x = element_text(vjust = -.2),
            axis.title.y = element_text(angle = 90, vjust = 2),
            axis.text.y = element_text(vjust = 0.2, hjust = 0.95),
            axis.text.x = element_text(margin = margin(0, 0, 0, 0)),
            axis.title = element_text(face = "bold", size = rel(1)),
            #plot.title = element_text(size = 10, face = "bold", hjust = 0, margin = margin(0, 0, 0, b = 5)),
            plot.subtitle = element_text(size = 8, hjust = 0, margin = margin(0, 0, 0, b = 2)),
            plot.caption = element_text(size = 8, hjust = 1),
            legend.position = "bottom",
            legend.background = element_rect(fill = "transparent", colour = NA, linewidth = 0),
            legend.justification = .5,
            legend.title = element_text(face = "italic", size = 8, margin = margin(b = 0, 0, 0, 0), hjust = .5),
            legend.direction = "horizontal",
            legend.text = element_text(size = 8, margin = margin(l = 0, 0, 0, 0)),
            legend.box.spacing = unit(0, "cm"),
            legend.box.margin = margin(0, 0, 0, 0),
            plot.margin = margin(5, 5, 5, 5),
            legend.key = element_rect(fill = "transparent", color = "transparent"),
            legend.key.size = unit(.3, "cm"),
            strip.background = element_rect(fill = "#ddd8d8", color = "#130f09", linewidth = 0.25),
            strip.text = element_text(face = "bold", size = 8, margin = margin(t = 2, b = 2, 0, 0))
        )
    )
}





