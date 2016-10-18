def single_number(nums)
  one, two = 0, 0
  nums.each do |i| 
    one = (one ^ i) & (~two)
    two = (~one) & (two ^ i)
  end 
  return one 
end 

# one : the ith bit , a number appear once
# two : the ith bit , a number appear twice

# truth table
# two one i two_new one_new
#  0   0  0    0       0
#  0   0  1    0       1
#  0   1  0    0       1
#  0   1  1    1       0
#  1   0  0    1       0
#  1   0  1    0       0
#  1   1  0    X       X     
#  1   1  1    X       X

# transfer to logic expression

nums = [-19,-46,-19,-46,-9,-9,-19,17,17,17,-13,-13,-9,-13,-46,-28]
p single_number nums #=> -28
