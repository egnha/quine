#' A Self-Reproducing Function
#'
#' A [quine](https://en.wikipedia.org/wiki/Quine_(computing)) is a (non-empty)
#' function whose only output is a copy of its own source code: `quine_lang()`
#' and `quine_str()` are quines that output a [language][is.language()] object
#' and a string, respectively.
#'
#' @name quine
NULL

#' @rdname quine
#' @export
quine_lang <- function() {
  call("function", NULL, body())
}

#' @rdname quine
#' @export
quine_str <- function() {
  expr <- call("function", NULL, body())
  paste(deparse(expr), collapse = "\n")
}
