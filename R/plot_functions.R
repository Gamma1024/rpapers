# this file includes the functions revolving around plots


#' Set plot specifications
#'
#' @description This function sets the plot specifications for the current
#' session. It sets the theme for plots, enables showtext for the graphic
#' device and sets the dpi of the graphic device.
#' @importFrom ggplot2 theme_set ggplot
#' @importFrom showtext showtext_auto showtext_opts
#' @return NULL
#' @export
set_plot_specs <- function() {
    # use paper color and fill scales by default
    ggplot <- function(...) {
      ggplot2::ggplot(...) +
      scale_color_paper() +
      scale_fill_paper()
    }
    # set theme for plots
    theme_set(paper_theme())
    # automatically use showtext for graphic device
    showtext::showtext_auto(enable = TRUE)
    # set dpi of graphics device
    showtext::showtext_opts(dpi = 600)
}



#' Label facets of a ggplot2 plot
#'
#' Function adapted from the tag_facet function in the egg package
#'
#' @param plot A ggplot2 plot
#' @param type type of label to use: select one from "alpha", "ALPHA", "num",
#' "roman", "ROMAN"
#' @param open string/character preceeding type. Default is "("
#' @param close string/character following type. Default is ")"
#' @param vjust vertical alignment of label. Default is 2
#' @param hjust horizontal alignment of label. Default is -0.5
#' @param top_down logical. Default is FALSE. If TRUE, labels are ordered from
#' top to bottom, if FALSE, labels are ordered from left to right
#' @importFrom ggplot2 ggplot_build geom_text aes
#' @return A ggplot2 plot with labelled facets
#' @export
label_facets <- function(plot,
                         type = c("alpha", "ALPHA", "num", "roman", "ROMAN"),
                         open = "(", close = ")", vjust = 2, hjust = -0.5,
                         top_down = FALSE) {
  type <- match.arg(type)
  type <- switch(type,
                 "alpha" = letters[1:26],
                 "ALPHA" = LETTERS[1:26],
                 "num" = 1:26,
                 "roman" = tolower(as.roman(1:26)),
                 "ROMAN" = as.roman(1:26)
  )
  p_b <- ggplot_build(plot)
  layout <- p_b$layout$layout
  if (top_down) {
    layout <- layout[order(layout$COL),]
  }
  labels_by_facet <- cbind(
    layout,
    label = paste0(open, type[1:nrow(layout)], close)
  )
  plot + geom_text(
    data = labels_by_facet,
    aes(x = -Inf, y = Inf, label =.data[["label"]]),
    hjust = hjust,
    vjust = vjust
  )
}


#' Title
#'
#' @param n n
#'
#' @return n factorial
#' @export
factorial <- function(n) {
  if (n <= 1) return(1)
  else return(n * factorial(n-1))
}


