test_that("translate_codons correctly translates codons to amino acids", {
  expect_equal(translate_codons(c("AUG", "GCC")), "MA")
  expect_equal(translate_codons(c("UAA", "UAG")), "__")
})
