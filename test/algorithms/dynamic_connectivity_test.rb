require_relative '../test_helper'

shared_examples_for 'Dynamic connectivity checker' do
  it 'checks dynamic connectivity' do
    graph = @finder_class.new(9)
    refute graph.connected?(1, 2)

    graph.connect(4, 3)

    graph.connected?(3, 4).must_equal true
    graph.connected?(4, 3).must_equal true
    graph.connected?(2, 3).must_equal false

    graph.connect(3, 8)
    graph.connect(6, 5)
    graph.connect(9, 4)

    graph.connected?(8, 9).must_equal true
    graph.connected?(5, 9).must_equal false
    graph.connected?(5, 6).must_equal true
  end
end
