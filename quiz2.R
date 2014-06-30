f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}

randi <- function(x) {
        if(x > 5) {
                x <- 0
        }
        x
}