require 'rspec'
require "./lib/node"

RSpec.describe Node do

  it 'exists' do
    node = Node.new("plop")
    node.data
    node.next_node

    expect(node).to be_an_instance_of(Node)
  end
  it 'can add data' do
    node = Node.new("plop")
    node.data
    node.next_node

    expect(node.data).to eq("plop")
  end
  it 'ends with nil' do
    node = Node.new("plop")
    node.data
    node.next_node

    expect(node.next_node).to be(nil)
  end

end

