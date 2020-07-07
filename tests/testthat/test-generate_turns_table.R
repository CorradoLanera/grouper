test_that("import function works and check names", {
  res_ok <- import_table(test_path("testdata/test_ok.xlsx"))

  expect_is(res_ok, "data.frame")
  expect_equal(
    names(res_ok), c("matricola", "cognome", "nome", "cds_cod")
  )
})

test_that("names imported in title case and ordered", {
  res_ok <- import_table(test_path("testdata/test_ok.xlsx"))
  expect_equal(res_ok$cognome[[1L]], "Oman")
  expect_equal(res_ok$nome[[1L]], "Davide")

})


test_that("generates_turns_table works", {
  withr::local_file(test_path("test.csv"))
  expect_error(generate_turns_table(test_path("test.csv")))


  res_ok <- generate_turns_table(test_path("testdata/test_ok.xlsx"))

  expect_is(res_ok, "data.frame")
  expect_equal(
    names(res_ok),
    c("matricola", "cognome", "nome", "cds_cod", "turn", "room")
  )
})


test_that("generates_turn_table accepts and defines turns", {
  res_1t <- generate_turns_table(test_path("testdata/test_ok.xlsx"))
  expect_true(all(res_1t$turn == 1))

  res_2t <- generate_turns_table(
    test_path("testdata/test_ok.xlsx"),
    turns = 2
  )
  expect_equal(res_2t$turn, c(1, 2, 1, 2, 1))
})


test_that("generates_turn_table accepts and defines groups", {
  res_1t1r <- generate_turns_table(test_path("testdata/test_ok.xlsx"))
  expect_true(all(res_1t1r$room == 1))

  res_1t2r <- generate_turns_table(
    test_path("testdata/test_ok.xlsx"),
    rooms = 2
  )
  expect_equal(res_1t2r$room, c(1, 2, 1, 2, 1))

  res_2t2r <- generate_turns_table(
    test_path("testdata/test_ok.xlsx"),
    turns = 2,
    rooms = 2
  )
  expect_equal(res_2t2r$turn, c(1, 2, 1, 2, 1))
  expect_equal(res_2t2r$room, c(1, 1, 2, 2, 1))

})
