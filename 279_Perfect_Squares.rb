def num_squares(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return (1..Math.sqrt(n).to_i).map do |i|
      num_squares(n - i ** 2) + 1 
    end.min
  end 
end # Time Limit Exceeded : 38

def num_squares1(n)
  helper = [0, 1]
  (2..n).each do |i|
    helper << (1..Math.sqrt(i).to_i).map do |j|
      helper[i - j ** 2] + 1
    end.min
  end
  helper[n]
end # Time Limit Exceeded : 6740


def num_squares2(n)
  helper = [0, 1]
  (2..n).each do |i| 
    helper[i] = i
    (1..Math.sqrt(i).to_i).each do |j|
      helper[i] = [helper[i - j ** 2] + 1, helper[i]].min
    end 
  end 
  helper[n]
end # Time Limit Exceeded : 7691  O(n ** 3/2) 


# number theory
def num_squares3(n)
  n /= 4 while n % 4 == 0
  return 4 if n % 8 == 7
  (0..Math.sqrt(n).to_i).each do |a|
    b = Math.sqrt(n - a ** 2).to_i
    if a * a + b * b == n
      if a > 0 && b > 0
        return 2
      elsif a == 0 && b == 0
        return 0
      else
        return 1
      end
    end
  end
  return 3
end

