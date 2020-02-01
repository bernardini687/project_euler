# frozen_string_literal: false

# find the diff
# between the sum of the squares
# of the first hundred natural numbers
# and the square of the sum.
module Problem6
  PROBLEM_SIZE = 100
  SUM_SQRS = ->(acc, n) { acc + n**2 }

  def self.solution(size: PROBLEM_SIZE)
    sum_nums = (1..size).sum
    sum_sqrs = (1..size).reduce(&SUM_SQRS)

    sum_nums**2 - sum_sqrs
  end
end

puts Problem6.solution
# => 25_164_150

puts Problem6.solution size: 10
# => 2_640
