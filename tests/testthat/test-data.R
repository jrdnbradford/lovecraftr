test_that("there are the right number of exported datasets", {
  corpus <- data(package = "lovecraftr")
  items <- corpus$results[, "Item"]
  expect_equal(length(items), 68)
})


test_that("datasets are loadable", {
  corpus <- data(package = "lovecraftr")
  items <- corpus$results[, "Item"]
  for (item in items) {
    dataset <- get(item)
    expect_silent({
      data(list = item, package = "lovecraftr")
    })
  }
})


test_that("datasets are not empty", {
  corpus <- data(package = "lovecraftr")
  items <- corpus$results[, "Item"]
  for (item in items) {
    dataset <- get(item)
    expect_true(
      length(dataset) > 0,
      info = paste("Dataset", item, "is empty")
    )
  }
})


test_that("datasets are right type", {
  corpus <- data(package = "lovecraftr")
  items <- corpus$results[, "Item"]
  for (item in items) {
    dataset <- get(item)
    if (item != "lovecraft") {
      expect_true(
        is.character(dataset),
        info = paste("Dataset", item, "is not a character vector")
      )
    }
  }
})
