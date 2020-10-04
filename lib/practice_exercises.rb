
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  string = string.downcase.gsub(/[^A-Za-z0-9]/, '')
  length = string.length
  (string.length/2).times do |i|
    return false if string[i] != string[length-1]
    length -= 1
  end
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

