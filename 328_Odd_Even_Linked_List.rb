def odd_even_list(head)
  head_odd = head # record odd linklist head pointer
  flag = head     # record odd linklist tail pointer
  i = 0           # record number of "while" 
  head_even = head.nil? ? nil : head.next # record even linklist head pointer
  while !head.nil?
    p = head.next
    head.next = p.next unless p.nil? # judge p is important
    i += 1
    flag = head if i.odd? # head is not nil at here , when i is odd , flag is odd linklist tail pointer on the current
    head = p 
  end 
  flag.next = head_even unless head_odd.nil?
  head_odd
end

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val 
    @next = nil 
  end 
end
arr = []
8.times do |i| 
  arr << ListNode.new(i+1)
end
7.times do |i| 
  arr[i].next = arr[i+1]
end
p arr[0]
#<ListNode:0x00000001e69000 @val=1, @next=#<ListNode:0x00000001e68fd8 @val=2, @next=#<ListNode:0x00000001e68fb0 @val=3, @next=#<ListNode:0x00000001e68f88 @val=4, @next=#<ListNode:0x00000001e68f60 @val=5, @next=#<ListNode:0x00000001e68f38 @val=6, @next=#<ListNode:0x00000001e68f10 @val=7, @next=#<ListNode:0x00000001e68ee8 @val=8, @next=nil>>>>>>>>
p odd_even_list arr[0]
#<ListNode:0x00000001e69000 @val=1, @next=#<ListNode:0x00000001e68fb0 @val=3, @next=#<ListNode:0x00000001e68f60 @val=5, @next=#<ListNode:0x00000001e68f10 @val=7, @next=#<ListNode:0x00000001e68fd8 @val=2, @next=#<ListNode:0x00000001e68f88 @val=4, @next=#<ListNode:0x00000001e68f38 @val=6, @next=#<ListNode:0x00000001e68ee8 @val=8, @next=nil>>>>>>>>


