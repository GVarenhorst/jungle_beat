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

  it "can prepend nodes" do
    list = LinkedList.new
    
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end

  it "can insert nodes with data" do
    list = LinkedList.new
    
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    
    expect(list.to_string).to eq("dop woo plop suu")
  end

  it "can find nodes" do
    list = LinkedList.new
    
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    
    expect(list.find(2,1)).to eq("shi")
    expect(list.find(1,3)).to eq("woo shi shu")
  end

  it "can check for nodes" do
    list = LinkedList.new
    
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    
    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)
  end

  it "can remove the last node and return the value" do
  list = LinkedList.new
    
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    
    list.pop
    list.pop

    expect(list.to_string).to eq("deep woo shi")
  end
end



