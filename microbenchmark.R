plot(boats)

system.time(test1 <- extract_patches_min(boats, 150 : 250, 100 : 200, rep(15, 101), rep(15, 101)))
system.time(test2 <- patchstat(boats, "min", 150 : 250, 100 : 200, rep(15, 101), rep(15, 101)))

library(microbenchmark)

microbenchmark(
  extract_patches_min(boats, 150 : 250, 100 : 200, rep(15, 101), rep(15, 101)),
  patchstat(boats, "im", 150 : 250, 100 : 200, rep(15, 101), rep(15, 101))
)
