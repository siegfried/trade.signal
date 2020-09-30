explain_signal <- function(x1) {
    x0 <- dplyr::lag(x1)
    x2 <- dplyr::lead(x1)
    dplyr::if_else(
        x1,
        dplyr::case_when(
            !x0 ~ "long",
            !x2 ~ "short",
            is.na(x0) ~ "long",
            is.na(x2) ~ "short",
            TRUE ~ "hold"
        ),
        "hold"
    )
}

plain_signal <- function(x) {
    x != "hold"
}
