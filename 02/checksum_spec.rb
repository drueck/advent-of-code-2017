require "rspec"
require "./Checksum.rb"

RSpec.describe "Checksum" do
  describe "#row_checksum" do
    it "returns the difference between the max and min values in the array" do
      checksum = Checksum.new
      row = [5, 1, 9, 5]
      expect(checksum.row_checksum(row)).to eq 8

      row = [7, 5, 3]
      expect(checksum.row_checksum(row)).to eq 4

      row = [2, 4, 6, 8]
      expect(checksum.row_checksum(row)).to eq 6
    end
  end

  describe "#table_checksum" do
    context "given an array of arrays of numbers" do
      it "returns the sum of the checksums for each array" do
        table = [[5, 1, 9, 5],
                 [7, 5, 3],
                 [2, 4, 6, 8]]
        checksum = Checksum.new
        expect(checksum.table_checksum(table)).to eq 18

        table = [[0],[1],[2]]
        expect(checksum.table_checksum(table)).to eq 0
      end
    end
  end
end

