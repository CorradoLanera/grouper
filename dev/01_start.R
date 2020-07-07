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
usethis::use_news_md()
usethis::use_git()
golem::use_recommended_tests()
golem::use_recommended_deps()
golem::remove_favicon()
golem::use_favicon()
golem::use_utils_ui()
golem::use_utils_server()
rstudioapi::navigateToFile( "dev/02_dev.R" )
