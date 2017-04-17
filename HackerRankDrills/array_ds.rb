# Output Format
#
# Print all N integers in A in reverse order as a single line of space-separated integers.
#
# Sample Input
# 4
# 1 4 3 2
#
# Sample Output
# 2 3 4 1

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def bwarr(arr)
    result = ""
    arr.reverse_each do |number|
      result << number.to_s + " "
    end
    result
end

answer = bwarr(arr)
print answer
