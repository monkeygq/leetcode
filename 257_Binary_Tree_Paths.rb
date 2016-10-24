def binary_tree_paths(root)
  def helper(root, arr1, arr2)
    if !root.nil?
      arr1 << root.val
      helper(root.left, arr1, arr2)
      helper(root.right, arr1, arr2)
      arr2 << arr1.join("*").split("*") if root.left.nil? && root.right.nil? # here is a trap
      arr1.pop
    end 
  end 
  arr2 = []   
  helper(root, [], arr2) 
  arr2.map { |num| num.join("->") }
end

# line 7
# arr1 has been constantly changing in the recursive , so arr2 << arr1 is wrong
# for the following example , if then , arr2 = [arr1, arr1, arr1] , arr1 = [1, 3] at last
# arr2 = [[1,3], [1,3], [1,3]] , so we must record arr1 at that time

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val 
    @left, @right = nil, nil 
  end 
end

one = TreeNode.new(1)
two = TreeNode.new(2)
three = TreeNode.new(3)
four = TreeNode.new(4)
five = TreeNode.new(5)
one.left = two 
one.right = three
two.left = four
two.right = five
#         1  <--- one
#        / \
#       2   3
#      / \
#     4   5
p binary_tree_paths one #=> ["1->2->4", "1->2->5", "1->3"]

