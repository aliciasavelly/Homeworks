class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
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
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
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
