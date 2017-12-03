require "rspec"
require "csv"
require "./evenly_divisible_checksum.rb"

RSpec.describe "evenly divisible file checksum" do
  it "reads the file into an array of arrays and computes the table checksum" do
    table = CSV.read("./test_input_2.txt", col_sep: "\t")
    checksum = EvenlyDivisibleChecksum.new
    expect(checksum.table_checksum(table)).to eq 9
  end
end
