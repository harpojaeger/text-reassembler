require './input'
require './mean'

text = 'The quick fox jumped over the lazy brown dog.  Then he went to the store...and bought milk!' unless @text
text = @text if @text

sentences = text.split('.')
sentences = sentences.reject(&:empty?)
sentences.collect(&:strip!)
starting_words = []
sentence_lengths = []
sentence_count = sentences.count

sentences.each do |sentence|
  words = sentence.split(' ')
  word = words[0]

  starting_words << word if word

  sentence_lengths << words.count
end
mean_sentence_length = sentence_lengths.mean
puts "#{sentence_count} sentences with #{mean_sentence_length} words mean length."