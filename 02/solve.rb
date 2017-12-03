require "csv"
require "./Checksum.rb"

filename = ARGV[0]
exit if filename.nil?

table = CSV.read(filename, col_sep: "\t")
puts Checksum.new.table_checksum(table)
