
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  # replace all non letters with empty string
  new_string = string.upcase.gsub(/[^A-Za-z]/, '')

  a = 0
  b = new_string.length - 1

  while a <= b
    if new_string[a] != new_string[b]
      return false
    end

    a += 1
    b -= 1
  end
  # return true or false
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end


