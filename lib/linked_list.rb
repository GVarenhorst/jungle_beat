class LinkedList
  attr_reader :head
  def initialize
    @head = nil
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

    def prepend(data)
      current_node = Node.new(data)
      current_node.next_node = @head
      @head = current_node
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

  # def index_at(value_index)
  #   current_node = head
  #   (index - 1).times do
  #     if current_node.nil?
  #       current_node = current_node.next_node
  #     end
  #   end
  # end

  def insert(index, data)
    current_node = @head 
    (index - 1).times do
    current_node = current_node.next_node
    # require "pry"; binding.pry
    end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(index, string_to_return)
    current_node = @head
    beats = []
    index.times do
      current_node = current_node.next_node
    end
    while current_node != nil && beats.length < string_to_return
      beats << current_node.data
      current_node = current_node.next_node
    end
    beats.join(" ")
  end

  def includes?(data)
    current_node = @head
    until current_node.data == data || current_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node.data == data
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    tail = current_node.next_node
    current_node.next_node = nil
    tail.data
  end
end




