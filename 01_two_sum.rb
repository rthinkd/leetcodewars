def two_sum(nums, target)
  nums.each.with_index do |num, index|
    x_rem = target - num
    index_rem = nums.find_index(x_rem)

    return [index, index_rem] if index_rem && index_rem != index
  end 
end