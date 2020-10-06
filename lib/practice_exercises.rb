
# Time Complexity: O(N)
# Space Complexity: ?
def is_palindrome(string)
  reversed = ""
  punctuation = ""
  new_string = ""
  index = string.length - 1

  while index > -1
    if !(string[index] == "," || string[index] == " " || string[index] == ":")
      reversed += string[index].downcase
    end
    index -= 1
  end

  i = reversed.length - 1
  while i > -1
    new_string += reversed[i]
    i -= 1
  end

  if new_string == reversed
    return true
  else
    return false
  end
end


# Time Complexity: O(N^2)
# Space Complexity: ?
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  new_input = ""
  shortest_word = strings[0]
  #start with first letter
  strings.each_with_index do |word, index|
    if shortest_word.length > word.length
      shortest_word = word
    end
  end
  #index = shortest_word.length
  output = ""
  shortest_word.each_char.with_index do |letter, index|
    strings.each do |word|
      return output if letter != word[index]
    end
    output += letter
  end
  return output
end


