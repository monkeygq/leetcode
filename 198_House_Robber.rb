def rob(nums)
  flag = nums.empty? ? [0] : [nums.first]
  flag << [nums[0], nums[1]].max if nums[1]
  i = 2 
  while i < nums.length
    flag << [flag[i-2] + nums[i], flag[i-1]].max
    i += 1
  end 
  flag.last
end

# flag is increasing(not strict monotone) , so flag.last is the max
# it is also a dp problem
# flag[0] = nums[0]                                i = 0
# flag[1] = max(nums[0], nums[1])                  i = 1
# flag[i] = max(flag[i-2] + nums[i], flag[i-1])    i > 1
