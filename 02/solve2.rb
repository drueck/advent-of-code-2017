require "csv"
require "./file_checksum.rb"
require "./evenly_divisible_checksum.rb"

filename = ARGV[0]
exit if filename.nil?

puts FileChecksum.new(filename, EvenlyDivisibleChecksum.new).calculate
