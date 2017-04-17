# Built-in methods
- Zip method: combines collections. Ex:

```ruby
  a = [1, 2, 3]
  b = [2, 3, 4]

  a.zip(b)
  => [[1, 2], [2, 3], [3, 4]]
```
Example of triple comparisons utilizing .zip method:

```ruby
#The first line contains  space-separated integers, , , and , describing the respective values in triplet .

#The second line contains  space-separated integers, , , and , describing the respective values in triplet .

  a_input = gets.strip.split(' ')
  b_input = gets.strip.split(' ')

  a_score = 0
  b_score = 0

  a_input.zip(b_input).each do |a_point, b_point|
      a_score += 1 if a_point.to_i > b_point.to_i
      b_score += 1 if b_point.to_i > a_point.to_i
  end

  puts "#{a_score} #{b_score}"
```
# Data-sets

- Stack:
```ruby
stack = []
stack << 2 # push 2 => stack = [2]
stack << 3 # push 3 => stack = [2, 3]
stack.pop  # pop => 3, stack = [2]
```
- Queue:
```ruby
# we have a Queue class
queue = Queue.new
queue << 2 # push 2 => queue = [2]
queue << 3 # push 3 => queue = [2, 3] (just a representation, it will be an object though)
queue.pop # pop 2
```

- Linked List:
```ruby
# A very simple representation
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next = next_node
  end
end

class LinkedList

  def initialize(value)
    @head = Node.new(value)
  end

  def add(value)
    current = @head
    while !current.next_node.nil?
      current = current.next_node
    end
    current.next_node = Node.new(value)
  end
end

ll = LinkedList.new
ll.add(10)
ll.add(20)
```

- Maps:
```ruby
# Hash incase of ruby
a = {} (or a = Hash.new)
a['one'] = 1 # a = {"one"=>1}
a['two'] = 2 # a = {"one"=>1, "two"=>2}
```

- Set:
```ruby
# we have a Set class
require 'set'
s = Set.new         # <Set: {}>
s.add(1)            # <Set: {1}>
s.add(2)            # <Set: {1, 2}>
s.add(1)            # <Set: {1, 2}>
s.instance_of?(Set) # true
```
examples found on [stackoverflow](http://stackoverflow.com/questions/5006395/does-ruby-have-containers-like-stacks-queues-linked-lists-maps-or-sets) by divyum 
