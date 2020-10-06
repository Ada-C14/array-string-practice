
# Time Complexity: O(n)?
# Space Complexity: O(1)?
def is_palindrome(string)
  return true if string == ""

  letter_counter = 0
  new_string = string.downcase.gsub(/[^A-Za-z0-9]\s*/, '')
  new_string_array = new_string.chars
  length = new_string_array.length

  while letter_counter < length
    if new_string_array[0] == new_string_array[new_string_array.length - 1]
      return true
    end
    letter_counter += 1
    return false
  end
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  return '' if strings.empty?

  strings.each.with_index do |char, i|

  end

end

