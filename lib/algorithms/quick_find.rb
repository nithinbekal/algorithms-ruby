module Algorithms
  # Quick-find algorithm for solving dynamic connectivity
  #
  # Usage:
  #
  #     graph = QuickFind.new(10)
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
  class QuickFind
    def initialize(size)
      @size  = size
      @nodes = (1..size).to_a
    end

    def connect(p, q)
      return if connected?(p, q)
      pid = @nodes[p]
      qid = @nodes[q]

      (1..@size).each do |i|
        @nodes[i] = qid if @nodes[i] == pid
      end
    end

    def connected?(p, q)
      @nodes[p] == @nodes[q]
    end
  end
end
