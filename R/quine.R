#' A Self-Reproducing Function
#'
#' `quine()` is a non-empty function whose only output is a copy of its own
#' source code (as a [language][is.language()] object).
#'
#' @export
quine <- function() {
  call("function", NULL, body(quine))
}
