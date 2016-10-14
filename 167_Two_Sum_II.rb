def two_sum(numbers, target) # two pointers : head and tail
  l = 0 
  r = numbers.length - 1 
  while l < r 
    flag = numbers[l] + numbers[r]
    if flag == target
      return [l+1, r+1]
    elsif flag < target
      l += 1
    else
      r -= 1
    end 
  end 
end

# the first method's idea is good , but the second is faster.

def two_sum2(numbers, target)
  i = numbers[0]
  j = target - i 
  while i <= target && i <= j
    j = target - i 
    if numbers.include?(i) && numbers.include?(j)
      i_index = numbers.index(i)
      j_index = numbers.index(j)
      return i_index == j_index ? [i_index + 1, j_index + 2] : [i_index + 1, j_index + 1]
    end 
    i += 1
  end 
end

numbers = [0,0,3,4]
target = 0 
p two_sum numbers, target   #=> [1,2]
p two_sum2 numbers, target  #=> [1,2]

