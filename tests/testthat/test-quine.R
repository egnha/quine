context("Quine")

test_that("quine() reproduces its source code", {
  src <- call("function", NULL, body(quine))
  expect_identical(quine(), src)
})
