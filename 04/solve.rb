valid_passphrases = 0
File.open("input.txt", "r") do |file|
  file.each_line do |line|
    words = line.split(" ")
    valid_passphrases += 1 if words.length == words.uniq.length
  end
end
puts valid_passphrases
