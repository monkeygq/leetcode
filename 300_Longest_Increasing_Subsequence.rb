def length_of_lis(nums) 
  lis = []
  len = nums.length  
  i = 0 
  while i < len 
    lis[i] = 1 
    j = 0 
    while j < i 
      lis[i] = lis[j] + 1 if nums[j] < nums[i] && lis[j] + 1 > lis[i]
      j += 1
    end 
    i += 1
  end 
  lis.empty? ? 0 : lis.max
end

nums = [10, 9, 2, 5, 3, 7, 101, 18] 
p length_of_lis nums # => 4



# classical dp problem

# lis[i] : longest increasing subsequence of subarray (nums[0..i]) 
#
# two layer traversal
#
# while i < len
#   while j < i
#   end
# end







