# recursion , Time Limit Exceeded
def min_path_sum(grid) 
  m = grid.size - 1 
  n = grid[0].size - 1 
  def helper(grid, m, n)
    if m == 0 && n == 0
      return grid[0][0]
    elsif m == 0 && n > 0 
      return helper(grid, m, n-1) + grid[m][n]
    elsif m > 0 && n == 0
      return helper(grid, m-1, n) + grid[m][n]
    else
      return [helper(grid, m-1, n) + grid[m][n], helper(grid, m, n-1) + grid[m][n]].min
    end 
  end 
  helper(grid, m, n)
end

# save to arr is good
def min_path_sum2(grid)
  m = grid.size - 1 
  n = grid[0].size - 1 
  arr = Array.new(m+1) {Array.new(n+1, 0)}
 # Two dimensional array ,  initialization has a trap
 # if arr = Array.new(m, Array.new(n, 0)) , change one element , all lines' elements will be changed.
  (n+1).times do |i| 
    if i == 0
      arr[0][0] = grid[0][0]
    else
      arr[0][i] = arr[0][i-1] + grid[0][i]
    end 
  end 
  flag = grid.transpose
  (m+1).times do |i| 
    if i == 0
      arr[0][0] = grid[0][0]
    else
      arr[i][0] = arr[i-1][0] + grid[i][0]
    end 
  end 
  (1..m).each do |i| 
    (1..n).each do |j| 
      arr[i][j] = [arr[i][j-1], arr[i-1][j]].min + grid[i][j]
    end 
  end 
  arr.last.last
end

a = [[1,2,3],[4,5,6]]
p min_path_sum2 a #=> 12

