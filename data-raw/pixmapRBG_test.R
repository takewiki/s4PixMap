x <- seq(-3,3,length.out = 100);
z1 <- outer(x,x,function(x,y){
  abs(sin(x)*sin(y))
})
z2 <- outer(x,x,function(x,y){
  abs(sin(2*x)*sin(y))
})
z3 <- outer(x,x,function(x,y){
  abs(sin(x)*sin(2*y))
})
mypic <- new('pixmapRGB',size=dim(z1),
             red=z1,green=z2,blue=z3);
plot(mypic)

# class(mypic);

mypic@size <-"hello world";
