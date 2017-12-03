input = ARGV[0]
exit if input.nil?

input_array = input.chars
input_array << input_array[0]

sum = 0
input_array.each_cons(2) do |pair|
  sum += pair.first.to_i if pair[0] == pair[1]
end

puts sum
