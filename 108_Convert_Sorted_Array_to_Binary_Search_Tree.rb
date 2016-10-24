def sorted_array_to_bst(nums)
  def helper(nums)
    if nums.length > 1 # Pay attention to the determine condition
      flag = nums.length / 2 
      mid = nums[flag]
      left = nums[0..(flag-1)]
      right = nums[(flag+1)..(nums.length-1)]
      mid.left = left[left.length / 2] 
      mid.right = right[right.length / 2] 
      helper(left)
      helper(right)
    end 
  end 
  nums = nums.map { |i| TreeNode.new(i) }
  root = nums[nums.length / 2]
  helper(nums)
  root
end
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val 
    @left, @right = nil, nil 
  end 
end

p sorted_array_to_bst [1,2,3,4,5,6,7]
#<TreeNode:0x000000019349b8 @val=4, @left=#<TreeNode:0x00000001934a58 @val=2, @left=#<TreeNode:0x00000001934aa8 @val=1, @left=nil, @right=nil>, @right=#<TreeNode:0x00000001934a08 @val=3, @left=nil, @right=nil>>, @right=#<TreeNode:0x00000001934918 @val=6, @left=#<TreeNode:0x00000001934968 @val=5, @left=nil, @right=nil>, @right=#<TreeNode:0x000000019348c8 @val=7, @left=nil, @right=nil>>>
