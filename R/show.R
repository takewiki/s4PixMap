#' 为了pixmap定义show方法
#'
#' @param pixmap 定义一个pixmap对象
#'
#' @return 返回值
#' @export
#'
#' @examples show();
setMethod("show",
          "pixmap",
          function(object){
  cat("pixmap Image\n");
  cat(" Type :",class(object),"\n");
  cat(" Size :",paste(object@size,collapse = 'x'),"\n");
  cat(" Resolution :",paste(object@cellres,collapse = 'x'),"\n");
  cat(" Bounding Box:",object@bbox,"\n");
  cat("\n");

 });


