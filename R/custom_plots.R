# This file contains custom ggplot2 geoms





#' Split Violin Plot
#'
#' @description A split violin plot allows to display the KDE of two groups
#' next to each other. It is a variation of the violin plot. Code was copied
#' from this href{https://stackoverflow.com/questions/35717353/split-violin-plot-with-ggplot2}{Stackoverflow post}.
#' The parameter descriptions coincide with the official ones of the geom_violin
#' layer
#'
#' @param mapping Set of aesthetic mappings created by aes()
#' @param data A dataframe
#' @param stat The statistical transformation to use on the data for this layer,
#' @param position Position adjustment, either as a string, or the result of a
#' call to a position adjustment function.
#' @param ... other arguments passed on to layer. These are often aesthetics,
#' used to set an aesthetic to a fixed value, like colour = "red" or size = 3.
#' They may also be parameters to the paired geom/stat.
#' @param draw_quantiles numeric vector of length two, specifying which
#' quantiles to draw as segments. The default is to draw the quartiles
#' (0.25, 0.75). To suppress drawing quantiles, set this to numeric(0).
#' @param trim  If TRUE (default), trim the tails of the violins to the range
#'of the data. If FALSE, don't trim the tails.
#' @param scale if "area" (default), all violins have the same area
#' (before trimming the tails). If "count", areas are scaled proportionally to
#' the number of observations. If "width", all violins have the same maximum
#' width.
#' @param na.rm logical (default is FALSE) remove NA values from the data before
#'computing statistics.
#' @param show.legend logical. Should this layer be included in the legends?
#' NA, the default, includes if any aesthetics are mapped. FALSE never includes,
#' and TRUE always includes. It can also be a named logical vector to finely
#' select the aesthetics to display.
#' @param inherit.aes If FALSE, overrides the default aesthetics, rather than
#' combining with them. This is most useful for helper functions that define
#'  both data and aesthetics and shouldn't inherit behaviour from the default
#'  plot specification, e.g. borders().
#'
#' @return A ggplot2 geom
#' @import ggplot2
#' @importFrom plyr arrange
#' @importFrom scales zero_range
#' @importFrom grid grobTree
#' @export
geom_split_violin <- function(mapping = NULL, data = NULL, stat = "ydensity", position = "identity", ...,
                              draw_quantiles = NULL, trim = TRUE, scale = "area", na.rm = FALSE,
                              show.legend = NA, inherit.aes = TRUE) {
  GeomSplitViolin <- ggproto(
    "GeomSplitViolin", GeomViolin,
    draw_group = function(self, data, ..., draw_quantiles = NULL) {
      data <- transform(data, xminv = x - violinwidth * (x - xmin), xmaxv = x + violinwidth * (xmax - x))
      grp <- data[1, "group"]
      newdata <- plyr::arrange(transform(data, x = if (grp %% 2 == 1) xminv else xmaxv), if (grp %% 2 == 1) y else -y)
      newdata <- rbind(newdata[1, ], newdata, newdata[nrow(newdata), ], newdata[1, ])
      newdata[c(1, nrow(newdata) - 1, nrow(newdata)), "x"] <- round(newdata[1, "x"])
      if (length(draw_quantiles) > 0 & !scales::zero_range(range(data$y))) {
        stopifnot(all(draw_quantiles >= 0), all(draw_quantiles <=
                                                  1))
        quantiles <- ggplot2:::create_quantile_segment_frame(data, draw_quantiles)
        aesthetics <- data[rep(1, nrow(quantiles)), setdiff(names(data), c("x", "y")), drop = FALSE]
        aesthetics$alpha <- rep(1, nrow(quantiles))
        both <- cbind(quantiles, aesthetics)
        quantile_grob <- GeomPath$draw_panel(both, ...)
        ggplot2:::ggname("geom_split_violin", grid::grobTree(GeomPolygon$draw_panel(newdata, ...), quantile_grob))
      }
      else {
        ggplot2:::ggname("geom_split_violin", GeomPolygon$draw_panel(newdata, ...))
      }
    }
  )
  layer(data = data, mapping = mapping, stat = stat, geom = GeomSplitViolin,
        position = position, show.legend = show.legend, inherit.aes = inherit.aes,
        params = list(trim = trim, scale = scale, draw_quantiles = draw_quantiles, na.rm = na.rm, ...))
}


