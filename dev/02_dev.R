golem::add_module(name = "import-data")

golem::add_fct("helpers")
usethis::use_test("app")

golem::add_utils("helpers")

rstudioapi::navigateToFile("dev/03_deploy.R")
