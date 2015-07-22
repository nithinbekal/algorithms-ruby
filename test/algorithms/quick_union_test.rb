require_relative './dynamic_connectivity_test'
require 'algorithms/quick_union'

describe Algorithms::QuickUnion do
  before { @finder_class = Algorithms::QuickUnion }

  it_behaves_like 'Dynamic connectivity checker'
end
