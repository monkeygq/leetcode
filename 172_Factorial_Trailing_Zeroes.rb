def trailing_zeroes(n)
  sum = 0 
  while n / 5 > 0
    flag = n / 5
    sum += flag
    n = flag
  end
  sum 
end
 
# n / k means the number of 1..n can be divided exactly by k 

