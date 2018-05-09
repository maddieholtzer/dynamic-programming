class DynamicProgramming

  def initialize
    @blairnums = Hash.new(false)
    @blairnums[1] = 1
    @blairnums[2] = 2

  end

  def blair_nums(n)
    return @blairnums[n] if @blairnums[n]
    @blairnums[n] = blair_nums(n-1) + blair_nums(n-2) + (n*2)-3
    @blairnums[n]
  end

  def frog_hops_bottom_up(n)
    three_back = [[1]]
    two_back = [[1,1], [2]]
    one_back = [[1,1,1], [2,1], [1,2], [3]]
    return three_back if n == 1
    return two_back if n == 2
    return one_back if n == 3
    counter = 4
    while counter<=n
      three_back_next = three_back.map{|hop| hop + [3]}
      two_back_next = two_back.map{|hop| hop+ [2]}
      one_back_next = one_back.map{|hop| hop+ [1]}
      three_back = two_back

      two_back = one_back
      one_back = three_back_next + two_back_next + one_back_next
      counter+=1

    end
    one_back
  end

  def frog_cache_builder(n)

  end

  def frog_hops_top_down(n)
    return 0 if n==1
    frog_hops_top_down_helper(n-1)

  end

  def frog_hops_top_down_helper(n)
    return 0 if n==1
    frog_hops_top_down_helper(n-1)
  end

  def super_frog_hops(n, k)

  end

  def knapsack(weights, values, capacity)

  end

  # Helper method for bottom-up implementation
  def knapsack_table(weights, values, capacity)

  end

  def maze_solver(maze, start_pos, end_pos)
  end
end

d = DynamicProgramming.new()

# d.frog_hops_bottom_up(4)
# print d.frog_hops_bottom_up(5)
