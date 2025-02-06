# R Mean Calculation Bug

This repository demonstrates a subtle bug in a simple R function designed to calculate the mean of a numeric vector. The function handles empty vectors correctly, but it incorrectly calculates the mean when dealing with missing values (NAs).  The bug is related to the way the denominator is calculated in the presence of NAs.

The `bug.R` file contains the buggy code.  The `bugSolution.R` file provides a corrected version of the function.