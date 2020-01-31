"""
find the diff
between the sum of the squares
of the first hundred natural numbers
and the square of the sum.
"""

import functools

PROBLEM_SIZE = 100
SUM = lambda acc, n: acc + n
SUM_SQRS = lambda acc, n: acc + n**2

def solution(size=PROBLEM_SIZE):
    """
    find the diff.
    """
    return sqr_of_sum(size) - sum_of_sqrs(size)

def sqr_of_sum(custom_size):
    """
    calc the sqr of the sum of `custom_size` natural nums.
    """
    sum_of_nums = functools.reduce(SUM, nums_upto(custom_size))
    return sum_of_nums**2

def sum_of_sqrs(custom_size):
    """
    calc the sum of the sqrs of `custom_size` natural nums.
    """
    return functools.reduce(SUM_SQRS, nums_upto(custom_size))

def nums_upto(size):
    """
    get a list size `size`.
    """
    return list(range(1, size + 1))

print(solution())
# => 25_164_150

print(solution(10))
# => 2_640
