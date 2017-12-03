input = ARGV[0]
exit if input.nil?

input_array = input.chars
length = input_array.length

sum = 0
input_array.each_with_index do |val, i|
  opposite_index = (i + length/2) % length
  opposite_val = input_array[opposite_index]
  sum += val.to_i if val == opposite_val
end

puts sum
