
#' define a virtual super class pixmap----
#'
#' @slot size integer.  size for the map
#' @slot cellres numeric.  cellres in the map.
#' @slot bbox numeric. bbox in
#'
#' @return return value
#' @export
#'
#' @examples pixmap();
pixmap <-  setClass("pixmap",
                      slot=c(size = "integer",
                             cellres = "numeric",
                             bbox = "numeric"),
                      prototype=prototype(
                        size=integer(2),
                        cellres=c(1,1),
                        bbox=numeric(4)
                      )
                    );
# library(rdS4);
# getSlotMetaTable('pixmap');

# new('pixmap');

# define a subclass  pixmapRGB----

#' define a subclass pixmapRGB
#'
#' @slot red matrix. red channel setting by matrix.
#' @slot green matrix. green channel setting by matrix
#' @slot blue matrix. blue channel setting by matrix
#'
#' @return return value
#' @export
#'
#' @examples pixmapRGB();
pixmapRGB <-  setClass("pixmapRGB",
                      slot=c(red = "matrix",
                             green = "matrix",
                             blue='matrix'),
                      contains = "pixmap",
                      prototype = prototype(
                        new('pixmap')
                      ));

# new('pixmapRGB');

# define subclass pixmapIndexed----
#' define subclass pixmapIndexed
#'
#' @slot index matrix. index
#' @slot col character. col
#'
#' @return return value.
#' @export
#'
#' @examples pixmapIndexed();
pixmapIndexed <-  setClass("pixmapIndexed",
                      slot=c(index = "matrix",
                             col = "character"),
                      contains = "pixmap",
                      prototype = prototype(
                        new('pixmap')
                      ));
mypic <- new('pixmapIndexed');
mypic@index <- matrix(1:16,4);
mypic@col <- heat.colors(16);
mypic@size <- dim(mypic@index);
mypic;
