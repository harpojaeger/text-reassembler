
counts = Hash.new 0
starting_words.each do |word|
  counts[word] += 1
end
counts = counts.sort_by { |_k, v| -v }
counts.each do |k, v|
  puts "#{k} #{v}"
end