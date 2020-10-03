
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  # return true if string is empty
  # else, turn string into characters array string.downcase.gsub(/[^a-z0-9]/,'')
  # reverse the array
  # check if the characters array is the same as the reversed array

  alt_string = string.downcase.gsub(/[^a-z0-9]/,'')

  if string.empty?
    return true
  elsif alt_string == reverse_string(alt_string)
    return true
  else
    false
  end

end

def reverse_string(string)
  i = 0
  j = string.size - 1 # last letter in the string
  string_arr = string.chars

  while i < j
    temp = string_arr[i]
    string_arr[i] = string_arr[j]
    string_arr[j] = temp

    i += 1
    j -= 1
  end

  return string_arr.join
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

