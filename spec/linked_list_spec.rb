require "./lib/linked_list"
require "./lib/node"
require "rspec"
require "pry"

RSpec.describe LinkedList do

  it "exists" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end

  it "has attributes" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "can append data" do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.data).to eq("doop") 
    expect(list.head.next_node).to eq(nil)
  end

  it "can recognize node count" do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it "can list nodes as a string" do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end

  it "can append multiple nodes" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end
end




