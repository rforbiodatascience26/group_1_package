test_that("split_codons splits sequence into triplets correctly", {
  expect_equal(split_codons("AUGGCCUAA"), c("AUG", "GCC", "UAA"))
  expect_equal(split_codons("AUGGCC", start = 1), c("AUG", "GCC"))
})
