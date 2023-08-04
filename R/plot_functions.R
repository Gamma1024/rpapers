# this file includes the functions revolving around plots

#' Set plot specifications
#' @return A list of plot specifications
#' @import ggplot2
#' @import sysfonts
#' @import showtext
#' @export
set_plot_specs <- function() {
    # set theme for plots
    paper_plot_theme()
    # automatically use showtext for graphic device
    showtext::showtext_auto(enable = TRUE)
    # set dpi of graphics device
    showtext::showtext_opts(dpi = 600)
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


