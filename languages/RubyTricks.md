#Built-in methods
- reverse_each:
Builds a temporary array and traverses that array in reverse order.
If no block is given, an enumerator is returned instead.

```ruby
(1..3).reverse_each { |v| p v }

#produces:

3
2
1
```

- Zip method: combines collections. Ex:

```ruby
  a = [1, 2, 3]
  b = [2, 3, 4]

  a.zip(b)
  => [[1, 2], [2, 3], [3, 4]]
```
Example of triple comparisons utilizing .zip method:

```ruby
#The first line contains  space-separated integers, , , and , describing the respective values in triplet .

#The second line contains  space-separated integers, , , and , describing the respective values in triplet .

  a_input = gets.strip.split(' ')
  b_input = gets.strip.split(' ')

  a_score = 0
  b_score = 0

  a_input.zip(b_input).each do |a_point, b_point|
      a_score += 1 if a_point.to_i > b_point.to_i
      b_score += 1 if b_point.to_i > a_point.to_i
  end

  puts "#{a_score} #{b_score}"
```
