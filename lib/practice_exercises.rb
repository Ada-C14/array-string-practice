# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)

  return true if string.length == 0 || string.length == 1

  string_values = /[0-9a-zA-z]/


  i = 0
  j = string.length - 1
  while i < j
    if string_values.match(string[i]) && !string_values.match(string[j])
      j -= 1
    elsif !string_values.match(string[i]) && string_values.match(string[j])
      i += 1
    else
      return false if string[i].upcase != string[j].upcase
      i += 1
      j -= 1
    end
  end

  return true

end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end
