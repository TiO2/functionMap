
context("Parsing R expressions")

test_that("syntax errors", {
  src <- "
    f <- function() { g() }
    h <- function-error()
    g <- function() { TRUE }
  "

  expect_warning(
    p <- with_src(src, parse_r_script(src)),
    "unexpected"
  )

})

test_that("get_funcs_from_r_script keeps srcrefs", {
  src <- "
    f <- function() { g() }
    g <- function() { TRUE }
    f() # top-level
    h <- function() { g() }
  "
  funcs <- with_src(src, get_funcs_from_r_script(src))

  expect_equal(names(funcs), c("f", "g", "_", "h"))
  expect_true(! is.null(getSrcref(funcs[[1]])))
})
