# Time Complexity: O(n)
# Space Complexity: constant
def is_palindrome(string)
  return true if string.empty? || string.length == 1

  # return everything that not match the pattern with an empty space
  string_modification = string.gsub(/[^a-zA-Z0-9]/, '').downcase

  index = 0
  while index < string_modification.length / 2
    if string_modification[index] == string_modification[string_modification.length - index - 1]
      index += 1
    else
      return false
    end
  end

  return true
end


# Time Complexity: O(n^2)
# Space Complexity: O(m*n)


def longest_prefix(strings)
  string_index = 0
  char_index = 0
  longest_prefix = ""

  # return the length of the shortest string
  shortest_string_length = (strings.min_by { |string| string.length }).length

  return longest_prefix if strings.empty?

  while  char_index < shortest_string_length
    char = strings[string_index][char_index]
    strings.each do |string|
      return longest_prefix if string[char_index] != char
    end

    longest_prefix += strings[string_index][char_index]
    char_index +=1
    string_index +=1
  
  end

  return longest_prefix

end
