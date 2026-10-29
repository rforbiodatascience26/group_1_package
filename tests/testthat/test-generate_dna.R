test_that("generate_dna produces correct length and valid characters", {
  seq <- generate_dna(15)
  expect_equal(nchar(seq), 15)
  expect_true(grepl("^[ATGC]+$", seq))
})
