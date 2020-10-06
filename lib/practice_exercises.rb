
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  if string == ""
    return true
  end

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
  raise NotImplementedError, "Not implemented yet"
end

