module Algorithms
  # Quick-find algorithm for solving dynamic connectivity
  #
  # Usage:
  #
  #     graph = QuickUnion.new(10)
  #
  #     # Add connections
  #     graph.connect(4, 3)
  #     graph.connect(3, 8)
  #     graph.connect(6, 5)
  #     graph.connect(9, 4)
  #
  #     # Check if connected
  #     graph.connected?(8, 9) #=> true
  #
  class QuickUnion
    def initialize(size)
      @size  = size
      @nodes = (0..size).to_a
    end

    def connect(p, q)
      return if connected?(p, q)
      @nodes[p] = root(q)
    end

    def connected?(p, q)
      root(p) == root(q)
    end

    private

    def root(node)
      x = node
      while true
        return x if @nodes[x] == x
        x = @nodes[x]
      end
    end
  end
end
