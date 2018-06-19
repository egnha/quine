context("Quine")

test_that("quine_lang() reproduces its source code as a language object", {
  src <- call("function", NULL, body(quine_lang))
  out <- quine_lang()

  expect_identical(out, src)
  expect_type(out, "language")
})

test_that("quine_str() reproduces its source code as a string", {
  src <- call("function", NULL, body(quine_str))
  src <- paste(deparse(src), collapse = "\n")
  out <- quine_str()

  expect_identical(out, src)
  expect_type(out, "character")
})
