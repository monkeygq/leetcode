# stupid idea
def swap_pairs1(head)
  even_arr = []
  odd_arr = []
  flag = 1 
  while !head.nil?
    if flag == 1
      odd_arr << head
      flag = 0 
    else
      even_arr << head
      flag = 1 
    end 
    head = head.next
  end 
  res = even_arr.empty? ? odd_arr.first : even_arr.first
  even_len = even_arr.size
  odd_len = odd_arr.size
  nums = odd_len > even_len ? even_len : odd_len
  pointer = nil 
  nums.times do |i| 
    even_arr[i].next = odd_arr[i]
    odd_arr[i].next = even_arr[i+1]
    pointer = odd_arr[i]
  end 
  if even_len < odd_len
    pointer.next = odd_arr.last if pointer 
  end 
  res 
end

# good idea
def swap_pairs2(head)
  return head if head.nil? || head.next.nil? # Recursive exit condition
  new_head = head.next
  head.next = new_head.next
  new_head.next = head
  head.next = swap_pairs2(head.next) # start recursion
  return new_head # final return value
end


class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val 
    @next = nil 
  end 
end
one = ListNode.new(1)
two = ListNode.new(2)
three = ListNode.new(3)
four = ListNode.new(4)
one.next = two 
two.next = three
three.next = four

p swap_pairs2 one # => #<ListNode:0x000000007a6cf0 @val=2, @next=#<ListNode:0x000000007a6d68 @val=1, @next=#<ListNode:0x000000007a6b10 @val=4, @next=#<ListNode:0x000000007a6c78 @val=3, @next=nil>>>>





