require "rspec"
require "./file_checksum.rb"

RSpec.describe FileChecksum do
  describe "#table" do
    it "returns the data from the file as an array of arrays" do
      file_checksum = described_class.new("test_input.txt", nil)
      expected_table = [["5", "1", "9", "5"],
                        ["7", "5", "3"],
                        ["2", "4", "6", "8"]]

      expect(file_checksum.table).to eq expected_table
    end
  end

  describe "#calculate" do
    it "calls the table_checksum method of the given checksum object with the table from the file" do
      checksum = double("checksum implementation instance")
      expected_result = double("checksum result")
      table = double("table data from file")
      allow(checksum).to receive(:table_checksum).with(table).and_return(expected_result)

      file_checksum = FileChecksum.new("test.txt", checksum)
      allow(file_checksum).to receive(:table).and_return(table)
      expect(file_checksum.calculate).to eq expected_result
    end
  end
end
