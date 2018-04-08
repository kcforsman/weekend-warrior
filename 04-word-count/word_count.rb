require "pry"
require "awesome_print"

def words string
  count = {}
  word = ""
  string.length.times do | x |
    if /\S/.match?(string[x])
      word << string[x]
    else
      count[word] += 1 if count[word]
      count[word] = 1 if word != "" && !count[word]
      word = ""
    end
  end
  count[word] += 1 if count[word]
  count[word] = 1 if word != "" && !count[word]
  count
end
