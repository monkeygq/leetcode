def level_order(root)
  return [] if root.nil?
  arr1 = [root]
  sum = [arr1]
  while !arr1.empty?
    arr2 = []
    arr1.each do |node|
      arr2 << node.left if node.left
      arr2 << node.right if node.right
    end
    sum << arr2 unless arr2.empty?
    arr1 = arr2
  end
  sum.map do |arr|
    arr.map { |node| node.val }
  end
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
#         1  <--- one
#        / \
#       2   3
#      / \
#     4   5
p level_order one #=> [[1], [2, 3], [4, 5]]

