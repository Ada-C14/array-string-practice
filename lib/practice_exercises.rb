
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  string.downcase!
  string.gsub!(/[^A-Za-z]/, '')
  midpoint = string.length / 2
  midpoint.times do |i|
    return false if string[i] != string[string.length - 1 - i]
  end
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

