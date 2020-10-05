
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  raise ArgumentError 'Input is not a string' unless string.class == String
  return true if string == ""
  string.upcase!

  beg = 0
  fin = string.length - 1

  while beg < fin do
    if string[beg] =~ /[a-z0-9]/i && string[fin] =~ /[a-z0-9]/i
      return false if string[beg] != string[fin]
      beg += 1
      fin -= 1
    else
      beg += 1 unless string[beg] =~ /[a-z0-9]/i
      fin -= 1 unless string[fin] =~ /[a-z0-9]/i
    end
  end

  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

