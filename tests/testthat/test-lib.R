test_that("explain_signal", {
    expect_equal(
        explain_signal(
            c(TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE)
        ),
        c("long", "hold", "short", "hold", "hold", "long", "short")
    )
    expect_equal(
        explain_signal(
            c(TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE)
        ),
        c("long", "hold", "short", "hold", "hold", "long", "hold", "short")
    )
})


test_that("plain_signal", {
    expect_equal(
        plain_signal(
            c("long", "hold", "short", "hold", "hold", "long", "short")
        ),
        c(TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE)
    )
})
