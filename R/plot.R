#' 为pixmapIndexed定义plot方法
#'
#' @param pixmapIndexed define pixmapIndexed object
#'
#' @return return value
#' @export
#'
#' @examples plot();
setMethod("plot",
          "pixmapIndexed",
          function(x,
                   y,
                   xlab = "",
                   ylab = "",
                   axes = FALSE,
                   asp = 1,
                   ...){

image(t(x@index[x@size[1]:1, ]),
      col=x@col,
      xlab=xlab,
      ylab=ylab,
      axes=axes,asp=asp,...)
          });

#' 定义pixmapRGB的plot方法
#'
#' @param pixmapRGB pixmapRGB的对象
#'
#' @return 返回值
#' @export
#' @include as.R
#'
#' @examples plot();
setMethod("plot",
          "pixmapRGB",
          function(x,y,...){
          plot(as(x,"pixmapIndexed"),...)
                      });

