def sum_of_left_leaves(root)
  def helper(root, res)
    unless root.nil?
      res << root.left.val if root.left && root.left.left.nil? && root.left.right.nil?
      helper(root.left, res)
      helper(root.right, res)
    end   
  end 
  res = []
  helper(root, res)
  res.empty? ? 0 : res.reduce(:+)
end

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val 
    @left, @right = nil, nil 
  end 
end
three = TreeNode.new(3)
nine = TreeNode.new(9)
twenty = TreeNode.new(20)
fifteen = TreeNode.new(15)
three.left = nine
three.right = twenty
twenty.left = fifteen
p sum_of_left_leaves three #=> 24

