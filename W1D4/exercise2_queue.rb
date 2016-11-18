class Queue

  def initialize
    @queue = []
  end

  def add(el)
    @queue << el
  end

  def remove
    @queue.shift
    @queue
  end

  def show
    print "\b#{@queue}\n"
  end
end
