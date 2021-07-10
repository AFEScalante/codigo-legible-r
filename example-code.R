### Chapter 8
item_list <- paste0("item", letters, runif(length(letters)))

# Explaining variables
if(any(grepl("itemc", item_list))) {
  ...
}

containsItemc <- any(grepl("itemc", item_list))
if(containsItemc){
  ...
}

# Summary variables
x <- tibble::tibble(x = runif(10))
class(x) <- "MyAnalysis"
inherits(x, 'MyAnalysis')

rango <- c(1, 5)
otro_rango <- c(2, 6)
OverlapsWith <- function(range, other) {
  # Verifica que el inicio del rango
  # y el final del rango caigan dentro de other
  return(
    (range[1] >= other[1] & range[1] <= other[2]) | 
    (range[2] >= other[1] & range[2] <= other[2])
  )
}

OverlapsWith <- function(range, other) {
  # Verifica que el inicio del rango
  # y el final del rango caigan dentro de other
  return(
    (range[1] >= other[1] & range[1] < other[2]) | 
    (range[2] > other[1] & range[2] <= other[2])
  )
}



OverlapsWith(c(1, 2), c(2, 8))
OverlapsWith(c(1, 2), c(3, 8))
OverlapsWith(c(3, 5), c(2, 6))
OverlapsWith(c(1, 7), c(2, 6))



df <- tibble(
  a1 = rnorm(100, 5, 3),
  a2 = rnorm(100, 5, 2),
  b1 = rnorm(100),
  b2 = rnorm(100)
)

a_cols <- grep("a", names(df))
normaliza <- function(x) (x - mean(x)) / sd(x)
df %<>%
  mutate_at(a_cols, normaliza)
