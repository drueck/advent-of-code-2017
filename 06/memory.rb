class Memory
  def initialize(banks)
    @banks = banks
    @history = []
  end

  def reallocate
    history << banks.dup
    blocks_in_fullest_bank = banks.max
    index_of_fullest_bank = banks.find_index(blocks_in_fullest_bank)
    banks[index_of_fullest_bank] = 0

    num_banks = banks.length
    i = index_of_fullest_bank
    blocks_remaining = blocks_in_fullest_bank
    blocks_for_each = (blocks_in_fullest_bank.to_f/num_banks.to_f).ceil

    while blocks_remaining > 0
      i = (i == num_banks - 1 ? 0 : i + 1)
      if blocks_for_each <= blocks_remaining
        banks[i] += blocks_for_each
        blocks_remaining -= blocks_for_each
      else
        banks[i] += blocks_remaining
        blocks_remaining = 0
      end
    end

    banks
  end

  def reallocation_count
    history.length
  end

  def duplicate_state?
    history.include?(banks)
  end

  attr_reader :banks, :history
end
