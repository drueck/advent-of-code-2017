valid_passphrases = 0
File.open("input.txt", "r") do |file|
  file.each_line do |line|
    sorted_words = line.split(" ").map { |word| word.chars.sort.join }
    valid_passphrases += 1 if sorted_words.length == sorted_words.uniq.length
  end
end
puts valid_passphrases
