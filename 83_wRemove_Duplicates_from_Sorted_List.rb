def delete_duplicates(head)
  p = head
  q = head.nil? ? nil : head.next
  while !q.nil? 
    if p.val == q.val
      p.next = q.next
    else
      p = p.next
    end 
      q = p.nil? ? nil : p.next
  end 
  head
end

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val 
    @next = nil 
  end 
end

one = ListNode.new(1)
two = ListNode.new(1)
three = ListNode.new(1)
one.next = two 
two.next = three
p delete_duplicates one # => #<ListNode:0x00000001ad4930 @val=1, @next=nil> 

