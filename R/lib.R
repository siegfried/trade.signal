#' @export
explain_signal <- function(x) {
    last <- dplyr::lag(x)
    dplyr::if_else(
        !is.na(last) & x == last,
        "hold",
        dplyr::if_else(x, "long", "short")
    )
}

#' @export
plain_signal <- function(x) {
    x != "hold"
}
