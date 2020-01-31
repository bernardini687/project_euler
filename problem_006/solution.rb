# find the diff
# between the sum of the squares
# of the first hundred natural numbers
# and the square of the sum.
module Problem6
  PROBLEM_SIZE = 100

  def self.solution(sqr_of_sum, sum_of_sqrs)
    sqr_of_sum - sum_of_sqrs
  end

  def self.sqr_of_sum(custom_size = PROBLEM_SIZE)
    (1..custom_size).reduce(:+).pow(2)
  end

  def self.sum_of_sqrs(custom_size = PROBLEM_SIZE)
    (1..custom_size).reduce { |acc, n| acc + n.pow(2) }
  end
end

puts Problem6.solution(Problem6.sqr_of_sum, Problem6.sum_of_sqrs)
# => 25_164_150
