#' import_data UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_import_data_ui <- function(id) {
  ns <- NS(id)
  sidebarLayout(

    sidebarPanel(
      fluidRow(
        column(6, numericInput(ns("turns"), "Number of turns",
                   value = 1, min = 1, step = 1
        )),
        column(6, numericInput(ns("groups"), "Number of groups",
                   value = 1, min = 1, step = 1
        ))
      ),
      fileInput(ns("sheet"), "Select the file to use", accept = ".xlsx")
    ),

    mainPanel(
      DT::DTOutput(ns("contents"))
    )
  )
}

#' import_data Server Function
#'
#' @noRd
mod_import_data_server <- function(id) {
  callModule(id = id, function(input, output, session) {

    output$contents <- DT::renderDT({
      file <- input$sheet
      ext <- tools::file_ext(file$datapath)

      req(file)
      req(input$turns)
      req(input$groups)
      validate(need_xlsx(ext))

      generate_turns_table(file$datapath, input$turns, input$groups)
    },
    filter = "top"
    )
  })
}
