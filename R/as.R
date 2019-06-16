setAs("pixmapRGB", "pixmapIndexed",
      function(from,to) {
      x <- rgb(from@red,from@green,from@blue);
      col <- unique(x);
      x <- match(x,col);
      x <- matrix(x, nrow= from@size[1],ncol= from@size[2]);
      new('pixmapIndexed',size=from@size,index=x,col=col);


        })
