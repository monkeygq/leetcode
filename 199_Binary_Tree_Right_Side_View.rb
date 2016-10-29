# Level traversal, put the last node of each layer to array
def right_side_view(root) 
  queue = []
  queue << [root]unless root.nil?
  i = 0 
  while i < queue.length
    arr = []
    queue[i].each do |node|
      arr << node.left if node.left
      arr << node.right if node.right
    end 
    queue << arr unless arr.empty?
    i += 1
  end 
  queue.map { |i| i.map { |j| j.val } }.map { |k| k.last}
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
three.left = four
three.right = five
#         1  <--- one
#        / \
#       2   3
#          / \
#         4   5
p right_side_view one #=> [1, 3, 5] 

