def kth_smallest(root,k)
  def calc(root)
    root.nil? ? 0 : 1 + calc(root.left) + calc(root.right)
  end
  l = calc(root.left)
  if k == l + 1
    return root.val
  else 
    k <= l ? kth_smallest(root.left, k) : kth_smallest(root.right, k - l - 1)
  end
end
