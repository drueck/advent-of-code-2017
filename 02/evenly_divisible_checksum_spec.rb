require "rspec"
require "./evenly_divisible_checksum.rb"

RSpec.describe EvenlyDivisibleChecksum do
  describe "#row_checksum" do
    it "returns the result of dividing the only two numbers in the row that can be evenly divided" do
      checksum = described_class.new
      row = [5, 9, 2, 8]
      expect(checksum.row_checksum(row)).to eq 4

      row = [9, 4, 7, 3]
      expect(checksum.row_checksum(row)).to eq 3

      row = [3, 8, 6, 5]
      expect(checksum.row_checksum(row)).to eq 2
    end
  end

  describe "#table_checksum" do
    it "returns the sum of the row_checksums for each row" do
      checksum = described_class.new
      table = [[1,2],
               [1,2]]
      expect(checksum.table_checksum(table)).to eq 4

      table = [[5, 9, 2, 8],
               [9, 4, 7, 3],
               [3, 8, 6, 5]]
      expect(checksum.table_checksum(table)).to eq 9
    end
  end
end
