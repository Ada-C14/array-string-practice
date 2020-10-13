
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)

  reduced_string = string.downcase.gsub(/[^A-Za-z]/, "")

  i = 0
  while i < (reduced_string.length - 1)
    if reduced_string[i] != reduced_string[reduced_string.length - 1]
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