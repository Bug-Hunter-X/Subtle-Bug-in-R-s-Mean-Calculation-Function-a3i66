```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vectors
  }
  sum_x <- sum(x, na.rm = TRUE)  #Remove NAs before summing
  mean_x <- sum_x / length(x) #Bug is here, length(x) might include NAs
  return(mean_x)
}

# Example usage:
vec1 <- c(1, 2, 3, NA, 5)
result <- calculate_mean(vec1)
print(result)
```