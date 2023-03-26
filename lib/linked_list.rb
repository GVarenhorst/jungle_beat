class LinkedList
  attr_reader :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end
  def add_node(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end
  def append(data)
    @head = Node.new(data)
  end
end