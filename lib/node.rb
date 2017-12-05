class Node
  attr_reader   :score,
                :title,
                :depth
  attr_accessor :left_next_node,
                :right_next_node,

  def initialize(score, title)
    @title           = title
    @score           = score
    @left_next_node  = nil
    @right_next_node = nil
    @depth           = 0
  end

end
