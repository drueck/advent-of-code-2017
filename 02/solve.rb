require "csv"
require "./largest_difference_checksum.rb"

filename = ARGV[0]
exit if filename.nil?

table = CSV.read(filename, col_sep: "\t")
puts LargestDifferenceChecksum.new.table_checksum(table)
