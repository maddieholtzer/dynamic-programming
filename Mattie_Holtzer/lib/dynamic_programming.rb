class DynamicProgramming

  def initialize
    @blairnums = Hash.new(false)
    @blairnums[1] = 1
    @blairnums[2] = 2

    @froghopsbttm = Hash.new(false)
    @froghopsbttm[1] = [[1]]
    @froghopsbttm[2] = [[1,1], [2]]
    @froghopsbttm[3] = [[1,1,1], [2,1], [1,2], [3]]
  end

  def blair_nums(n)
    return @blairnums[n] if @blairnums[n]
    @blairnums[n] = blair_nums(n-1) + blair_nums(n-2) + (n*2)-3
    @blairnums[n]
  end

  def frog_hops_bottom_up(n)
    @froghopsbttm[n]
  end

  def frog_cache_builder(n)

  end

  def frog_hops_top_down(n)

  end

  def frog_hops_top_down_helper(n)

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
