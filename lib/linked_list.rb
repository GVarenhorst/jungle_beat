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
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      # new_node = Node.new(data)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    if self == nil
      count = 0
    else
      count = 1
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
        count +=1
      end
      count
    end
  end

  def to_string
    current_node = head
    jbeat = []
    until current_node == nil
      jbeat << current_node.data
      current_node = current_node.next_node
    end
      jbeat.join(" ")
  end
end



