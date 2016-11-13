def can_partition(nums)
  sum = nums.reduce(:+)
  return false if sum.odd?
  helper = {}  
  helper[0] = 1 
  nums.each do |num|
    flag = {}
    helper.each { |k, v| flag[k+num] = 1 } 
    flag.each { |k, v| helper[k] = v } 
    return true if helper[sum / 2]
  end 
  false
end


nums = [1,2,5,8]
p can_partition nums # => true

