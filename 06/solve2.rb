require "./memory.rb"
require "csv"

filename = ARGV[0]
exit if filename.nil?

banks = CSV.readlines(filename, col_sep: "\t")[0].map(&:to_i)

memory = Memory.new(banks)
while !memory.duplicate_state?
  memory.reallocate
end

duplicate_state = memory.banks
history = memory.history
first_index = history.find_index(duplicate_state)
loop_length = history.length - first_index

puts loop_length
