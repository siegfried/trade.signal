test_that("explain_signal", {
    expect_equal(
        explain_signal(
            c(TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE)
        ),
        c("long", "hold", "hold", "short", "hold", "long", "hold")
    )
    expect_equal(
        explain_signal(
            c(TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE)
        ),
        c("long", "hold", "hold", "short", "hold", "long", "hold", "hold")
    )
    expect_equal(
        explain_signal(
            c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)
        ),
        c("long", "short", "long", "short", "long", "short", "long")
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
