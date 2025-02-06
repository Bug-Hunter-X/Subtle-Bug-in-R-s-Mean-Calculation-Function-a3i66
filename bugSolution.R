```R
# Corrected function to handle NAs correctly
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) 
  }
  x <- x[!is.na(x)] #Remove NAs before any other operation
  if (length(x) == 0) {
    return(NA) 
  }
  mean_x <- mean(x) #Using R's built in mean function that handles NAs
  return(mean_x)
}

# Example usage with NAs:
vec1 <- c(1, 2, 3, NA, 5)
result <- calculate_mean(vec1)
print(result) # Correct result: 2.75

vec2 <- c(NA, NA) # handles edge case
result <- calculate_mean(vec2)
print(result) # Correct result: NA
```