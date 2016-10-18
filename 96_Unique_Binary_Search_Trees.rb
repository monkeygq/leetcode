def num_trees(n)
  helper = [1, 1]
  i = 2 
  while i <= n
    j = 0 
    sum = 0 
    while j <= i - 1 
      k = i - j - 1 
      sum += helper[j] * helper[k]
      j += 1
    end 
    helper << sum
    i += 1
  end 
  helper.last
end

def num_trees2(n)
    up, down = 1, 1
    n.times do |i|
        up *= (2 * n - i)
        down *= (i + 1)
    end
    up / down / (n + 1)
end

# Catalan numbers

# while n = 0 , h(0) = 1
# while n = 1 , h(1) = 1
# while n >= 2 , h(n) = h(0)(n-1) + h(1)h(n-1) + ... + h(n-1)h(0)

# genernal formula : C(2n, n) / (n + 1)

# so , two ideas and two methods , obviously , num_tree2 is faster than num_tree


p num_trees 6   #=> 132
p num_trees2 6  #=> 132


