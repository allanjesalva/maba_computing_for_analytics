# 1. Define an R function that removes NA values from a vector.
del_NA <- function(ab) {
  temp=is.na(ab)
  return(temp)
}

# 2. Define an R function that computes the factorial of given an integer argument. The output should be a vector of length 1.
recur_factorial<- function(a) {
  if(a <= 1) {
    return(1)
  } else { 
    return(a * recur_factorial(a-1))
  }
}

# 4. Define an R function that sorts a given vector in decreasing order. The output should be a vector of the same length. It should accept both numeric or character vectors.
decrs_sort<-function(s) {
  temp=sort(s, decreasing = TRUE)
  return(temp)
}
  
s<-c(1,2,5, "argue", 4)

# 6. Create a function to compute for your net pay at work.
monthly_net_pay = function(basic_pay, non_tax_alw=0)
{monthly = basic_pay

if (monthly < 20833){
  net = monthly
} else if (monthly >= 20834 & monthly < 33333) {
  net = monthly - (monthly * 0.20)
} else if (monthly >= 33333 & monthly < 66667) {
  net = monthly - ((monthly * 0.25) + 2500)
} else if (monthly >= 66667 & monthly < 166667) {
  net = monthly - ((monthly * 0.30) - 10833.33)
} else if (monthly >= 166667 & monthly < 666667) {
  net = monthly - ((monthly * 0.32) - 40833.33)
} else{ 
  net = monthly - ((monthly *0.35) - 200833.33)
}

monthlynet = (net + non_tax_alw) - (581.33+100+550)
return (monthlynet)
}


# 9. Create a function isPrime(n) that accepts an integer and outputs a Boolean value (TRUE or FALSE) depending whether the integer is a prime number or not.
isPrime <- function(x){
  if(sum(x/1:x==x%/%1:x)==2) {
    return("TRUE")
  }
  else {
    return("FALSE")
  }  
}


