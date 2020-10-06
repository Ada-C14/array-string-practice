
# Time Complexity: 0(n), where n is the length of the string
# The loop in this method get ran 1/2n
# dropping the coefficient will be O(n)
# Space Complexity: 0(n), where n is the length of the string
# a new string is created based off of the input string
def is_palindrome(string)
  # replace all non letters with empty string
  new_string = string.upcase.gsub(/[^A-Za-z]/, '')

  # a starts at index 0
  # b is the last index of the string
  a = 0
  b = new_string.length - 1

  # compares each letter starting at the ends of the string
  # for every loop, a increases by one and b decreases by one
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


