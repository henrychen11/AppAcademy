class Stack
  def initialize
    # create ivar to store stack here!
    @ivar = []
  end

  def add(el)
    # adds an element to the stack
    @ivar << el
    el
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
    el
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
    @ivar = []
  end

  def assign(key, value)
    pairs = @ivar.index {|pair| pair[0] == key}
    value_holder = @ivar[pairs][1]
    if pairs.count > 1
      value_holder = value
    else
      @ivar << [key, value]
    end
    [key, value]

  end

  def lookup(key)
    @ivar.each do {|pair| return pair[1] if pair[0] == key }
    nil
  end

  def remove(key)
    @ivar.reject! {|pair| pair[0] == key}
    nil
  end

  def show
    deep_dup(@ivar)
  end

  def deep_dup(array)
    result = []
    array.map do |elem|
      if elem.is_a(Array)
        deep_dup(elem)
      else
        result << elem
      end
    end
    result
    end

  end
end
