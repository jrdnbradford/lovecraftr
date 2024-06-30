test_that("corpus data frame is right", {
  corpus <- lovecraft_corpus()
  expect_true(
    nrow(corpus) > 20000,
    info = paste("Number of rows in corpus is", nrow(corpus))
  )

  expect_true(
    is.data.frame(corpus),
    info = paste("Dataset is not a data frame")
  )
})
