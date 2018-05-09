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
    return @froghopsbttm[n] if @froghopsbttm[n]
    counter = 4
    while counter<=n
      one_back = @froghopsbttm[counter-1]
      one_back = one_back.deep_dup.each{|hop| hop.push(1)}
      two_back = @froghopsbttm[counter-2]
      two_back = two_back.dup.each{|hop| hop.push(2)}
      three_back = @froghopsbttm[counter-3]
      three_back = three_back.dup.each{|hop| hop.push(3)}
      @froghopsbttm[counter] = one_back + two_back + three_back
      counter+=1
    end
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

d = DynamicProgramming.new()

d.frog_hops_bottom_up(4)
d.frog_hops_bottom_up(5)
