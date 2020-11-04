
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)

  new_string = string.gsub(/[^A-Za-z], "")


  i = 0
  while i < (new_string.length - 1)
    if new_string[i]!= new_string[new_string.length - 1]
      return false
    end
  end

  return true
end

# Time Complexity: ?
# Space Complexity: ?
# def longest_prefix(strings)
#   raise NotImplementedError, "Not implemented yet"
# end