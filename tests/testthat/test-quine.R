context("Quine")

test_that("quine_lang() reproduces its source code as a language object", {
  src <- call("function", NULL, body(quine_lang))
  expect_identical(quine_lang(), src)
})

test_that("quine_str() reproduces its source code as a string", {
  src <- call("function", NULL, body(quine_str))
  src <- paste(deparse(src), collapse = "\n")
  expect_identical(quine_str(), src)
})
