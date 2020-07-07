#' Development history
#' ====================================================================
#'

autotestthat::auto_test_package_job() # before every start!


golem::add_module(name = "import-data")

usethis::use_test("data_validatation")
golem::add_fct("data_validation")

usethis::use_test("generate_turns_table")
golem::add_fct("generate_turns_table")








#'
#' Check cycles
#' ====================================================================
#'
#' Before pushes
#' --------------------------------------------------------------------
#'
renv::status()
usethis::use_tidy_description()
spelling::spell_check_package()
spelling::update_wordlist()




#'
#' Before pull requests
#' --------------------------------------------------------------------
#'
devtools::check_man()
lintr::lint_package()
goodpractice::gp()

# The following calls run into your (interactive) session
# Use the corresponding RStudio button under the "Build"
# tab to execute them mantaining free your console
# (and running them in a non-interactive session)
devtools::test()
devtools::check()

#'
#' > Update the `NEWS.md` file
#'
usethis::use_version()
