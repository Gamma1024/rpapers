# This file contains the theme for the plots in the paper



  #' @importFrom sysfonts font_add
  #' @importFrom showtext showtext_auto
  .load.lmroman <- function() {
    wd <- getwd()
    font_path <- system.file("fonts", package="rpapers")
    setwd(font_path)
    font_add(family = "lmroman10",
             regular = "lmroman10_regular.otf",
             symbol = "lmroman10_math.otf",
             italic = "lmroman10_italic.otf",
             bold = "lmroman10_bold.otf",
             bolditalic = "lmroman10_bolditalic.otf")
    showtext_auto()
    setwd(wd)
}


#' @importFrom sysfonts font_add
#' @importFrom showtext showtext_auto
.load.ibm <- function(){
  wd <- getwd()
  font_path <- system.file("fonts", package="rpapers")
  setwd(font_path)
  font_add(family = "ibm",
           regular = "IBMPlexSans-Regular.ttf",
           symbol = "lmroman10_math.otf",
           italic = "IBMPlexSans-Italic.ttf",
           bold = "IBMPlexSans-Bold.ttf",
           bolditalic = "IBMPlexSans-Bold.ttf")
  showtext_auto()
  setwd(wd)
}

#' Paper Plot Theme
#'
#' @description Set custom theme for plots that is well suited for papers
#' @param fontfamily Fontfamily that will be used. Default is IBMPlex-Sans with
#' lmroman10 for symbols.
#' Next to the traditional fonts the LaTeX/ Latin Roman 10 font will be loaded
#' andcan be selected using "lmroman10" as fontfamily. Finally, use "roboto"
#' to select the "Roboto" google font.
#' @param plot_background_fill fill color of the plot background; default is NA
#' @param panel_background_fill fill color of the panel background; default is
#'  NA
#' @return None
#' @importFrom ggplot2 theme element_text element_rect element_line
#' element_blank rel margin unit
#' @importFrom sysfonts font_add font_add_google
#' @export
paper_theme <- function(fontfamily = "roboto",
                        plot_background_fill = NA,
                        panel_background_fill = NA) {
    # Load custom fonts
    if (fontfamily == "lmroman10") .load.lmroman()
    if (fontfamily == "ibm") .load.ibm()
    if (fontfamily == "roboto") sysfonts::font_add_google("Roboto")
    theme(
        # text
        text = element_text(family = fontfamily, color = "#130f09"),
        # plot
        plot.title = element_text(face = "bold", size = rel(.9), hjust = .5,
                                  vjust = 1.5,
                                  color = "#130f09"),
        plot.subtitle = element_text(size = rel(.7), hjust = .5),
        plot.caption = element_text(size = rel(.7), hjust = 1),
        plot.background = element_rect(fill = plot_background_fill, color = NA),
        # panel
        panel.background = element_rect(fill = panel_background_fill,
                                        color = NA),
        panel.border = element_rect("#a5a5a5", fill = "transparent",
                                    linewidth = rel(2)),
        panel.grid.major = element_line(colour = "#eeeeee",
                                        linewidth = rel(1.2)),
        panel.grid.minor = element_blank(),
        # axis
        axis.ticks = element_line(color = "#a5a5a5"),
        axis.text = element_text(size = rel(.8)),
        axis.title.x = element_text(vjust = -.2),
        axis.title.y = element_text(angle = 90, vjust = 2),
        axis.text.y = element_text(size = rel(.8), vjust = 0.2, hjust = 1,
                                   margin = margin(r = 3)),
        axis.text.x = element_text(size = rel(.8), margin = margin(2, 0, 0, 0)),
        axis.title = element_text(face = "bold", size = rel(.8)),
        # legend
        legend.position = "bottom",
        legend.background = element_rect(fill = "transparent", color = NA),
        legend.title = element_text(face = "italic", size = rel(.8),
                                    hjust = .5),
        legend.direction = "horizontal",
        legend.text = element_text(size = rel(.8)),
        legend.box.spacing = unit(.2, "cm"),
        legend.key = element_rect(fill = "transparent", color = "transparent"),
        legend.key.size = unit(.3, "cm"),
        # facets
        strip.background = element_rect(fill = "#a5a5a5", color = NA),
        strip.text = element_text(face = "bold", size = rel(.7),
                                  margin = margin(t = 2.5, b = 2.5))
    )
}




