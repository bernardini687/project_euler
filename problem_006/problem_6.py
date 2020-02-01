"""
find the diff
between the sum of the squares
of the first hundred natural numbers
and the square of the sum.
"""

from functools import reduce

PROBLEM_SIZE = 100
SUM_SQRS = lambda acc, n: acc + n ** 2

def solution(size=PROBLEM_SIZE):
    """
    crunch the numbers and find the diff.
    """
    sum_nums = sum(nums_upto(size))
    sum_sqrs = reduce(SUM_SQRS, nums_upto(size))
    return sum_nums ** 2 - sum_sqrs

def nums_upto(size):
    """
    get a list of natural numbers upto `size`.
    """
    return list(range(1, size + 1))

print(solution())
# => 25_164_150

print(solution(10))
# => 2_640
