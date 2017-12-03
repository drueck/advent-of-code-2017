require "csv"

class FileChecksum
  def initialize(file, checksum_implementation)
    @file = file
    @checksum_implementation = checksum_implementation
  end

  def calculate
    checksum_implementation.table_checksum(table)
  end

  def table
    @table ||= CSV.read(file, col_sep: "\t")
  end

  private

  attr_reader :file, :checksum_implementation
end
