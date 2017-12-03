require "csv"
require "./evenly_divisible_checksum.rb"

filename = ARGV[0]
exit if filename.nil?

table = CSV.read(filename, col_sep: "\t")
puts EvenlyDivisibleChecksum.new.table_checksum(table)
