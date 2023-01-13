getwd()
setwd("/Users/raymond/Desktop/R")
# Ex2. F statistic = 3.2(right-tailed test). df1 = 3, df2 = 194
    # pdf
    x <- seq(0, 10, 0.01)
    y_df <- df(x, df1 = 3, df2 = 194, log = FALSE)
    jpeg(filename = "hw1.ex2.jpeg", width = 480, height = 480, res = 200)
    plot(x, y_df, type = "l", lwd = 3,
        ylab = "y", main = "Probability Density Function",
        cex.main = 2, cex.lab = 1.5)
    axis(1, at = seq(round(min(x)), round(max(x)), by = 1),
        labels = seq(round(min(x)), round(max(x)), by = 1))
    mtext("F test, df1 = 3, df2 = 194", side = 3, adj = 1, cex = 1)
    dev.off()

    # cdf
    x <- seq(0, 10, 0.01)
    y_pf <- pf(x, df1 = 3, df2 = 194)
    plot(x, y_pf, type = "l", lwd = 3,
        ylab = "y", main = "Cumulative Distribution Function",
        cex.main = 2, cex.lab = 1.5)
    axis(1, at = seq(round(min(x)), round(max(x)), by = 1),
        labels = seq(round(min(x)), round(max(x)), by = 1))
    mtext("F test, df1 = 3, df2 = 194", side = 3, adj = 1, cex = 1)

    #p-value
    options(digits = 3)
    (y_pf <- pf(3.2, df1 = 3, df2 = 194, lower = FALSE))
        #p_value = y_pf = 0.0245, since this test being one-sided


#Ex.3-1 t-test statistic = -2.08 (two-tailed test), df = 136
    #p-value
    y_pt <- pt(-2.08, df = 136)
    options(digits = 3)
    (p_value <- y_pt * 2)
        #p_value = 0.0394, since this test being double-sided


#Ex. 3-2 t-test statistic = 2.45 (two-tailed test), df = 136
    #p-value
    y_pt <- pt(2.45, df = 136, lower.tail = FALSE)
    options(digits = 3)
    (p_value <- y_pt * 2)
        #p-value = 0.0156, since this test being double-sided

    #pdf
    x <- seq(-5, 5, 0.01)
    y_dt <- dt(x, 136, log = FALSE)
    plot(x, y_dt, type = "l", lwd = 3,
        ylab = "y", main = "Probability Density Function",
        cex.main = 2, cex.lab = 1.5)
    axis(1, at = seq(round(min(x)), round(max(x)), by = 1),
        labels = seq(round(min(x)), round(max(x)), by = 1))
    mtext("t-test, df = 136", side = 3, adj = 1, cex = 1)


    #cdf
    x <- swq(-5, 5, 0.01)
    y_pt <- pt(x, df = 136)
    plot(x, y_pt, type = "l", lwd = 3,
        ylab = "y", main = "Cumulative Distribution Function",
        cex.main = 2, cex.lab = 1.5)
    axis(1, at = seq(round(min(x)), round(max(x)), by = 1),
        labels = seq(round(min(x)), round(max(x)), by = 1))
    mtext("t-test, df = 136", side = 3, adj = 1, cex = 1)
