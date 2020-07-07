need_xlsx <- function(x) {
  shiny::need(x == "xlsx", "Please, upload an xlsx file.")
}
