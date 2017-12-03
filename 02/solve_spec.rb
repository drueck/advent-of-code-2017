require "rspec"
require "csv"
require "./largest_difference_checksum.rb"

RSpec.describe "file checksum" do
  it "reads the file into an array of arrays and computes the table checksum" do
    table = CSV.read("./test_input.txt", col_sep: "\t")
    checksum = LargestDifferenceChecksum.new
    expect(checksum.table_checksum(table)).to eq 18
  end
end
