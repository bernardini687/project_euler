# frozen_string_literal: false

# find the diff
# between the sum of the squares
# of the first hundred natural numbers
# and the square of the sum.
module Problem6
  PROBLEM_SIZE = 100

  def self.solution(size: PROBLEM_SIZE)
    sqr_of_sum(size) - sum_of_sqrs(size)
  end

  def self.sqr_of_sum(custom_size)
    (1..custom_size).reduce(:+).pow(2)
  end

  def self.sum_of_sqrs(custom_size)
    (1..custom_size).reduce { |acc, n| acc + n.pow(2) }
  end
end

puts Problem6.solution
# => 25_164_150

puts Problem6.solution size: 10
# => 2_640
