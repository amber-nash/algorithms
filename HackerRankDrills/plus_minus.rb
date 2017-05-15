def plus_minus(arr)
  length = arr.length
  positive = 0
  negative = 0
  zero = 0

  arr.each do |item|
    if item > 0
      positive += 1
    elsif item < 0
      negative += 1
    elsif item == 0
      zero += 1
    end
  end
  # I can't get the round argument to run - but method pasts HR tests. 
  p positive / length.round(length)
  p negative / length.round(length)
  p zero / length.round(length)
end

plus_minus([-4, 3, -9, 0, 4, 1])
