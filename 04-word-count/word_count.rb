require "pry"
require "awesome_print"

def count_words words
  count = {}
  words.each do | word |
    if count[word]
      count[word] += 1
    else
      count[word] = 1
    end
  end
  count
end

def words string
  length = string.length
  list_of_words = []
  word = ""
  length.times do | x |
    if /\S/.match?(string[x])
      word << string[x]
    else
      list_of_words << word if word != ""
      word = ""
    end
  end
  list_of_words << word if word != ""
  count_words(list_of_words)
end
