def max_sub_array(nums) 
  sum = nums.first
  maxsum = sum 
   i = 1
   while i <= nums.length - 1 
     sum = [nums[i] + sum, nums[i]].max
     maxsum = [sum, maxsum].max
     i += 1
   end 
   maxsum
end

nums = [-2,1,-3,4,-1,2,1,-5,4]
p max_sub_array nums # => 6


# sum[i] means the max subarray which includes nums[i] of nums[0..i] 
# sum[0] = nums[0]
# sum[i+1] = max(sum[i] + nums[i], nums[i])
# for example :
# nums = [x, y, z]
# step1 : x
# step2 : max(x+y, y)
# step3 : max(max(x+y, y) + z, z) => max(max(x+y+z, y+z), z) => max(x+y+z, y+z, z)

# so , record step2 could simlify step3's calculation

# a good dp problem
