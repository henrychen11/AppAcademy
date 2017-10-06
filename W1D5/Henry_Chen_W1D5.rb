class Stack
  def initialize
    # create ivar to store stack here!
    @ivar = []
  end

  def add(el)
    # adds an element to the stack
    @ivar << el
  end

  def remove
    # removes one element from the stack
    @ivar.pop
  end

  def show
    # return a copy of the stack
    @ivar.dup
  end
end

class Queue
  def initialize
    @ivar = []
  end

  def enqueue(el)
    @ivar << el
  end

  def dequeue
    @ivar.shift
  end

  def show
    @ivar.dup
  end

end

class Map

  def initialize
  end

  def assign(key, value)
  end

  def lookup(key)
  end

  def remove(key)
  end

end
