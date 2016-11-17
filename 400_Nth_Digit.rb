def find_nth_digit(n)
  helper = [n] 
  basic = 9 
  i = 1 
  while n > 0
    n -= basic * i 
    helper << n
    basic *= 10
    i += 1
  end 
  flag = helper[-2]
  rem = flag % (i - 1)
  div = flag / (i - 1)
  if rem == 0
    div -= 1
    rem += i - 1 
  end
  target = (10 ** (i - 2) + div).to_s[rem- 1].to_i
end

