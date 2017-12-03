class EvenlyDivisibleChecksum
  def row_checksum(row)
    row = row.map { |str| str.to_i }
    sorted_row = row.uniq.sort.reverse

    (0..(sorted_row.length - 1)).each do |i|
      dividend = sorted_row[i]
      possible_divisors = sorted_row[(i+1)..-1]

      if divisor = possible_divisors.find { |divisor| dividend % divisor == 0 }
        return dividend / divisor
      end
    end

    raise StandardError, "No evenly divisible numbers found"
  end

  def table_checksum(table)
    row_checksums = table.map { |row| row_checksum(row) }
    row_checksums.reduce(:+)
  end
end
