def sum_numbers(root)
  def helper(root, arr1, arr2)
    if !root.nil?
      arr1 << root.val
      helper(root.left, arr1, arr2)
      helper(root.right, arr1, arr2)
      arr2 << arr1.join if root.left.nil? && root.right.nil?
      arr1.pop
    end 
  end 
  arr2 = []   
  helper(root, [], arr2)
  arr2.map(&:to_i).reduce(:+)
end


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
p sum_numbers one #=> 262

