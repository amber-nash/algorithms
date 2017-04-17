# You are given an array of integers of size N . You need to print the sum of the elements in the array, keeping in mind that some of those integers may be quite large.
#
# Input Format
# The first line of the input consists of an integer N. The next line contains  N space-separated integers contained in the array.

# Output Format
# Print a single value equal to the sum of the elements in the array.
#
# Constraints
 # 1 < N < 10 (lesser or equal to)
 # 0 < A[i] < 10 (lesser or equal to)

# Sample Input
# 5
# 1000000001 1000000002 1000000003 1000000004 1000000005

# Output
# 5000000015

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def largesum(arr)
    result = 0
    arr.each do |number|
        result += number
    end
    result
end

sum = largesum(arr)
print sum
