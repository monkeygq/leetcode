def count_and_say(n) 
  res = "1"
  (n-1).times do |i|
    stack = []
    flag = ""
    res.chars do |ch|
      if stack.empty? || ch == stack.last
        stack << ch
      else
        flag += stack.length.to_s
        flag += stack.first
        stack = [ch]
      end 
    end 
    unless stack.empty?
      flag += stack.length.to_s
      flag += stack.first
    end 
    res = flag
  end 
  res 
end

