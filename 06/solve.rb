require "./memory.rb"
require "csv"

filename = ARGV[0]
exit if filename.nil?

banks = CSV.readlines(filename, col_sep: "\t")[0].map(&:to_i)

memory = Memory.new(banks)
while !memory.duplicate_state?
  memory.reallocate
end

puts memory.reallocation_count
