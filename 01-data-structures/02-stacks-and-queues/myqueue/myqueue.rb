class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def enqueue(element)
    @queue.insert(-1, element)
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def dequeue
    if !empty?
      @queue.delete_at(0)
    end
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def empty?
    if @queue.length == 0
      true
    else
      false
    end
  end
end