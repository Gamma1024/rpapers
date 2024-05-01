# This file is part of the rpapers package for R.
# It contains useful color palettes for use in papers.

#' Custom Color Scale for Papers
#'
#' @description A simple bright color palette for use in papers. Other packages that
#' include useful color palettes are \code{RColorBrewer}, \code{viridis},
#' \code{wesanderson}, and \code{ggsci}.
#'
#' @param ... Additional arguments passed to \code{\link{discrete_scale}}
#'
#' @return None
#' @export
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
scale_color_paper_cb <- function(...){
  discrete_scale(
    "color", "paper", manual_pal(
      values = c(
        "#cfff3c",
        "#007329",
        "#870089",
        "#49ecff",
        "#002956",
        "#ffbecc",
        "#3894ff",
        "#fb00b9"
      )
    ), ...)
}






#' Custom Bright Colorblind-Friendly Fill Scale for Papers
#'
#' @description A simple bright color palette for use in papers. Other packages that
#' include useful color palettes are \code{RColorBrewer}, \code{viridis},
#' \code{wesanderson}, and \code{ggsci}.
#'
#' @param ... Additional arguments passed to \code{\link{discrete_scale}}
#'
#' @return None
#' @export
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
scale_fill_paper_cb <- function(...){
  discrete_scale(
    "fill", "paper", manual_pal(
      values = c(
        "#cfff3c",
        "#007329",
        "#870089",
        "#49ecff",
        "#002956",
        "#ffbecc",
        "#3894ff",
        "#fb00b9"
      )
    ), ...)
}



#' Custom Pastel Color Scale for Papers
#'
#' @description A simple pastel color palette for use in papers. Other packages that
#' include useful color palettes are \code{RColorBrewer}, \code{viridis},
#' \code{wesanderson}, and \code{ggsci}.
#'
#' @param ... Additional arguments passed to \code{\link{discrete_scale}}
#'
#' @return None
#' @export
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
scale_color_paper_pastel <- function(...){
  discrete_scale(
    "color", "paper", manual_pal(
      values = c(
        "#8646c7",
        "#9fcd53",
        "#c66a44",
        "#4e304a",
        "#c9528e",
        "#92cbae",
        "#9195c3",
        "#5e693e"
      )
    ), ...)
}






#' Custom Pastel Fill Scale for Papers
#'
#' @description A simple pastel color palette for use in papers. Other packages that
#' include useful color palettes are \code{RColorBrewer}, \code{viridis},
#' \code{wesanderson}, and \code{ggsci}.
#'
#' @param ... Additional arguments passed to \code{\link{discrete_scale}}
#'
#' @return None
#' @export
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
scale_fill_paper_pastel <- function(...){
  discrete_scale(
    "fill", "paper", manual_pal(
      values = c(
        "#8646c7",
        "#9fcd53",
        "#c66a44",
        "#4e304a",
        "#c9528e",
        "#92cbae",
        "#9195c3",
        "#5e693e"
      )
    ), ...)
}


#' Black and White Color Scale for Papers
#'
#' @description A black and white color palette for use in papers.
#'
#'
#' @param ... Additional arguments passed to \code{\link{discrete_scale}}
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
#' @return None
#' @export
scale_color_paper_bw <- function(...){
  discrete_scale(
    "color", "paper", manual_pal(
      values = c(
        "#000000",
        "#666666",
        "#CCCCCC",
        "#333333",
        "#999999",
        "#EEEEEE")
    ), ...)
}


#' Black and White Fill Scale for Papers
#'
#' @description A black and white color palette for use in papers.
#'
#' @param ... Additional arguments passed to \code{\link{discrete_scale}}
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales manual_pal
#' @return None
#' @export
scale_fill_paper_bw <- function(...){
  discrete_scale(
    "fill", "paper", manual_pal(
      values = c(
        "#000000",
        "#666666",
        "#CCCCCC",
        "#333333",
        "#999999",
        "#EEEEEE")
    ), ...)
}
