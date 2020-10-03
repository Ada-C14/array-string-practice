
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)

end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)

  result_string = ""
  next_word = 1

  strings.first.each_char.with_index do |letter, i|
      while next_word < strings.size
        if letter != strings[next_word][i]
          return result_string
        else
          next_word += 1
        end
      end
      i += 1
      result_string << letter
      next_word = 1
    end
    return result_string

end

