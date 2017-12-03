require "csv"
require "./file_checksum.rb"
require "./largest_difference_checksum.rb"

filename = ARGV[0]
exit if filename.nil?

puts FileChecksum.new(filename, LargestDifferenceChecksum.new).calculate
