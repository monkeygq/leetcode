def generate_parenthesis(n)
  def helper(l, r, str, arr) # the results can be an argument of method
    if l == 0 && r == 0
      arr << str 
      return
    end 
    if l > 0 
      helper(l - 1, r, str + "(", arr)
    end 
    if r > l 
      helper(l, r - 1, str + ")", arr)
    end 
  end 
  arr = []
  helper(n, n, "", arr)
  arr 
end
p generate_parenthesis 4
# => ["(((())))", "((()()))", "((())())", "((()))()", "(()(()))", "(()()())", "(()())()", "(())(())", "(())()()", "()((()))", "()(()())", "()(())()", "()()(())", "()()()()"]

