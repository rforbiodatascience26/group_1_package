test_that("transcribe_dna correctly replaces T with U", {
  expect_equal(transcribe_dna("ATGC"), "AUGC")
  expect_equal(transcribe_dna("TTTT"), "UUUU")
})
