def string_lengths(sentence)
  strings = sentence.split

  strings.map {|chars| chars.length}
end

s = 'To be or not to be'

def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < word.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end
