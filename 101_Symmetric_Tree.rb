#=====================stupid method===================>
def is_symmetric(root)
  def helper1(root) # get mirror 
    unless root.nil?
      root.left, root.right = root.right, root.left
      helper1(root.left)
      helper1(root.right)
    end 
  end 
  def helper2(root, arr) # Pre order traversal
    unless root.nil?
      arr << root.val
      helper2(root.left, arr)
      helper2(root.right, arr)
    end 
  end 
  def helper3(root, arr) # Middle order traversal
    unless root.nil?
      helper3(root.left, arr)
      arr << root.val
      helper3(root.right, arr)
    end 
  end 
  arr1, arr2, arr3, arr4 = [], [], [], []
  helper2(root, arr1)
  helper3(root, arr3)
  helper1(root)
  helper2(root, arr2)
  helper3(root, arr4)
  arr1 == arr2 && arr3 == arr4 # if the two order traversals of tree and mirror tree are same , then tree is the same as the mirror tree
end
#=====================================================>

#====================good mehtod======================>
def is_symmetric2(root)
  def helper(left, right)
    if left.nil? && right.nil?
      return true
    elsif (left.nil? && !right.nil?) || (!left.nil? && right.nil?)
      return false
    else
      return left.val == right.val && helper(left.left, right.right) && helper(left.right, right.left) 
    end 
  end 
  root.nil? ? true : helper(root.left, root.right)
end
#=====================================================>
