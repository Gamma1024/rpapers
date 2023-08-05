# This file is part of the rpapers package for R.
# It contains useful color palettes for use in papers.

#' Custom Color Scale for Papers
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
scale_color_paper <- function(...){
  discrete_scale(
    "color", "paper", manual_pal(
      values = c(
        "#597dbf",
        "#d98b5f",
        "#359187",
        "#A44B4B",
        "#A05FBB",
        "#CCCCCC",
        "#745c54",
        "#B8AA2B",
        "#5BC6F7",
        "#333333",
        "#897e77"
      )
    ), ...)
}






#' Custom Fill Scale for Papers
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
scale_fill_paper <- function(...){
  discrete_scale(
    "fill", "paper", manual_pal(
      values = c(
        "#597dbf",
        "#d98b5f",
        "#359187",
        "#A44B4B",
        "#A05FBB",
        "#CCCCCC",
        "#745c54",
        "#B8AA2B",
        "#5BC6F7",
        "#333333",
        "#897e77"
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
