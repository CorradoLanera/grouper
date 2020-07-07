golem::fill_desc(
  pkg_name = "grouper",
  pkg_title = "A Shiny App to Group Students in Turns and Rooms for Online Exams",
  pkg_description = "For Zoom examination it is useful to divided students into breakout rooms. When stundents are in a large number it could be necessary to consider multiple turns to complete an examination. {grouper} help you in grouping students in turns and in breakout room within each turn.",
  author_first_name = "Corrado",
  author_last_name = "Lanera",
  author_email = "corrado.lanera@unipd.it",
  repo_url = "https://www.github.com/CorradoLanera/grouper"
)
golem::set_golem_options()
usethis::use_gpl3_license(name = "CorradoLanera")
usethis::use_readme_rmd()
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge("Experimental")
usethis::use_cran_badge()
usethis::use_news_md()
usethis::use_package_doc()
usethis::use_git()
usethis::git_vaccinate()
golem::use_recommended_tests()
golem::use_recommended_deps()
usethis::use_spell_check()
spelling::spell_check_package()
spelling::update_wordlist()
golem::remove_favicon()
golem::use_favicon("~/Downloads/groups.png")
golem::use_utils_ui()
golem::use_utils_server()
usethis::use_tidy_description()
lintr::lint_package()

devtools::check_man()
devtools::test()
devtools::check()

usethis::use_github()
use_tidy_github()

renv::init(settings = list(snapshot.type = "explicit"))
renv::status() # just to check

usethis::use_github_action(
  url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/lint-renv.yaml"
)
usethis::use_github_actions_badge("lint")

usethis::use_github_action(
  url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/R-CMD-check-renv.yaml"
)
usethis::use_github_actions_badge("R-CMD-check")

usethis::use_github_action(
  url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/covr-renv.yaml"
)
usethis::use_github_actions_badge("test-coverage")


renv::install("CorradoLanera/autotestthat") # {renv} installation

usethis::use_tidy_description()
devtools::check_man()

spelling::spell_check_package()
spelling::update_wordlist()

lintr::lint_package()
renv::status()
devtools::check()

renv::install("GuangchuangYu/badger")
badger::badge_custom("WEBsite", "click-me", "orange", "https://r-ubesp.dctv.unipd.it/shiny/grouper/")
renv::install("magick")
usethis::use_logo("dev/grouper/icon.png")

rstudioapi::navigateToFile( "dev/02_dev.R" )
