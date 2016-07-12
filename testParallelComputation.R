library(imager)

library(doParallel)
library(foreach)
registerDoParallel(2)

test <- foreach(i = 1 : 10, .combine = "c") %dopar% {
  image <- boats
  m <- width(image)
  n <- height(image)
  
  grid    <- expand.grid(width = 1:m, height = 1:n)
  winsize <- rep(15, nrow(grid))
  
  tmp <- extract_patches_min(image, grid[, 1], grid[, 2], winsize, winsize)
  
  return(mean(tmp))
}
