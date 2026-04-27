rm(list = ls())

nth_roots <- function(z, n) {
  z  <- as.complex(z)     # sicherstellen, dass z komplex ist
  r  <- Mod(z)            # Betrag von z
  ph <- Arg(z)            # Argument (Winkel) von z
  k  <- 0:(n - 1)         # Indizes k = 0, ..., n-1

  roots <- r^(1/n) * exp(1i * (ph + 2*pi*k) / n)
  roots
}

round(nth_roots(-1+0i, 10), 5)
