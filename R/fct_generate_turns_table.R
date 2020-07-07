generate_turns_table <- function(x, turns = 1, rooms = 1) {
  import_table(x) %>%
    add_group_of("turn", turns) %>%
    dplyr::group_by(.data$turn) %>%
    add_group_of("room", rooms)
}

import_table <- function(x) {
  readxl::read_xlsx(x) %>%
    janitor::clean_names() %>%
    dplyr::mutate(dplyr::across(
      c(.data$cognome, .data$nome),
      stringr::str_to_title
    )) %>%
    dplyr::arrange(.data$cognome, .data$nome)
}


add_group_of <- function(x, group_name, n) {
  dplyr::mutate(x,
    {{group_name}} := dplyr::row_number() %% n,
    {{group_name}} := dplyr::if_else(
      .data[[group_name]] == 0L,
      true = n,
      false = .data[[group_name]]
    )
  )
}
