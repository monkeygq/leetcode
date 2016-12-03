def max_product(nums)
  arr = []
  max_pro = nums.first
  nums.each do |i| 
    arr = (arr.map { |j| i * j } << i).uniq
    max_pro = arr.max if arr.max > max_pro
  end 
  max_pro
end

# dp is better
# the special case is that two negtives make a positive , so use arrays : max and min

def max_product1(nums)
  num = nums.shift
  max, min = [num], [num]
  nums.each do |i| 
    a = max.last * i
    b = min.last * i
    max << [i, a, b].max # max.last : max_product of including i (local)
    min << [i, a, b].min # min.last : min_product of including i (local)
  end 
  max.max
end

