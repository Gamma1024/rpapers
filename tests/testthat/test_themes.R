#expect_equal
#expect_identical
#expect_equivalent
#expect_error
#expect_warning
#expect_output
test_that("theme loads", {
  expect_error(paper_plot_theme(), NA)
})

