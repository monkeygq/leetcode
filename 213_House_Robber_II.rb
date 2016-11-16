def rob(nums) 
  def helper(nums)
    return 0 if nums.nil?
    flag = nums.empty? ? [0] : [nums.first]
    flag << [nums[0], nums[1]].max if nums[1]
    i = 2 
    while i < nums.length
      flag << [flag[i-2] + nums[i], flag[i-1]].max
      i += 1
    end 
    flag.last
  end 
  flag1 = helper nums[0..(nums.length-2)]
  flag2 = helper nums[1..(nums.length-1)]
  [flag1, flag2].max
end


# helper is 198. House Robber , a chain
# rob is a loop , change the loop to a chain , there are two methods to change , so result is [flag1, flag2].max
