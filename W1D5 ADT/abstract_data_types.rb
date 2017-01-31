class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

# new_stack = Stack.new
# new_stack.add(1)
# new_stack.add(2)
# new_stack.add(3)
# new_stack.add(4)
# p new_stack.show
# new_stack.remove
# new_stack.remove
# p new_stack.show
# new_stack.add(5)
# new_stack.add(6)
# p new_stack.show
# new_stack.remove
# p new_stack.show

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

# new_queue = Queue.new
# new_queue.enqueue(1)
# new_queue.enqueue(2)
# new_queue.enqueue(3)
# p new_queue.show
# new_queue.dequeue
# new_queue.dequeue
# p new_queue.show
# new_queue.enqueue(4)
# new_queue.enqueue(5)
# p new_queue.show
# new_queue.dequeue
# p new_queue.show

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value]
    [key, value]
  end

  def lookup(key)
    @map.each { |pair| return pair.last if pair.include?(key) }
    nil
  end

  def remove(key)
    @map.reject! { |pair| pair.include?(key) }
    nil
  end

  def show
    @map.dup
  end
end

# new_map = Map.new
# new_map.assign(1, 2)
# new_map.assign(3, 4)
# p new_map.show
# new_map.remove(1)
# p new_map.show
# p new_map.lookup(3)
