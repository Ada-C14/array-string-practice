
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  string.downcase!
  letters = string.split("")

  last = letters.length - 1
  first = 0

  while(first < last)
    if letters[first] !~ /[a-z]/
      first += 1
    elsif letters[last] !~ /[a-z]/
      last -= 1
    elsif letters[first] != letters[last]
      return false
    else
      first += 1
      last -= 1
    end
  end
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

