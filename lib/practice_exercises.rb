
# Time Complexity: O(n/2) == O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string = string.downcase
  string = string.delete "^a-z"

  i = 0
  j = string.length - 1
  until i >= j
    if string[i] != string[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true

end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end


## helper methods
