class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(score, title)
    new_node = Node.new(score, title)
    if @root.nil?
       @root = new_node
    else
      # @root.insert(score, title)
      parent_node = @root
      post_insert(new_node, parent_node)
    end
  end

  def post_insert(new_node, parent_node)
    # 4 conditions here
    if new_node.score > parent_node.score && parent_node.right_next_node != nil
      right_insert(score, title)
      # if greater than, and not nil move right
      # post_insert(new_node, root.right)
    elsif new_node.score > root.score && root.right_next_node.nil?
         new_node = root_node.right_next_node
      # elsif greater than and nil, insert
    elsif new_node.score < root.score && root.right_next_node != nil
      left_insert(score, title)
      # elsif less than and not nil move left
    elsif new_node.score < root.score && new_node.nil?
      right_insert(score, title)
      # else less than and nil, insert
    end
  end

  # def right_insert(score, title)
  #       if post_insert.current = root.right_next_node
  #       depth += 1
  #       end
  # end
  #
  # def left_insert(score, title, current = @root)
  #   if root.score < current.score
  #       current = root.right_next_node
  #       depth += 1
  #   end
  # end
end