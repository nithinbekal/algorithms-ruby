require_relative './dynamic_connectivity_test'
require 'algorithms/quick_find'

describe Algorithms::QuickFind do
  before { @finder_class = Algorithms::QuickFind }

  it_behaves_like 'Dynamic connectivity checker'
end
