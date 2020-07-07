test_that("validation of file extension", {
  expect_null(need_xlsx("xlsx"))
  expect_equal(need_xlsx("csv"), "Please, upload an xlsx file.")
})
