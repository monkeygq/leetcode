def range_bitwise_and(m, n)
  num = 2
  while true
    if m < num && num <= n
      return 0
    elsif num > n
      return (m..n).reduce(:&)
    else
      num *= 2
    end
  end
end

# if m < 2 ** x <= m (x is positive integer)
# for example : 
#                    2 ** 4 is : 10000
# a number less than 2 ** 4 is : 0XXXX
# 10000 & 0XXXX = 0
# so all integers bitwise and(&) bwtween m and n = 0
# else
# (m..n).reduce(:&)
# when x is big enough , maybe have a little problem
# have a better way , but accepted anyway 
