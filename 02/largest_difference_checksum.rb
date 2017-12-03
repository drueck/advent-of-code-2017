class LargestDifferenceChecksum
  def row_checksum(row)
    row = row.map { |str| str.to_i }
    row.max - row.min
  end

  def table_checksum(table)
    row_checksums = table.map { |row| row_checksum(row) }
    row_checksums.reduce(:+)
  end
end
