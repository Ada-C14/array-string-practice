
# Time Complexity: O(mn), the alt_string will be O(n) and the reverse_string method is
# O(n). Alt_string is O(m). But since it's not nested, it'll be O(mn)
# Space Complexity: O(n), reverse_string made an array to hold the string characters
def is_palindrome(string)
  alt_string = string.downcase.gsub(/[^a-z0-9]/,'') # elimate punctuation and spaces O(m)

  if string.empty?
    return true
  elsif alt_string == reverse_string(alt_string) # O(n)
    return true
  else
    false
  end

end

def reverse_string(string)
  i = 0
  j = string.size - 1 # last letter in the string
  string_arr = string.chars # O(n)

  while i < j
    temp = string_arr[i]
    string_arr[i] = string_arr[j]
    string_arr[j] = temp

    i += 1
    j -= 1
  end

  return string_arr.join
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)

  result_string = ""
  next_word = 1

  strings.first.each_char.with_index do |letter, i| # O(n)
      while next_word < strings.size # O(n)
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

