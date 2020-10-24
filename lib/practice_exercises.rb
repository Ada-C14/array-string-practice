
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)

  if string.length == 0 || string.length == 1
    return true
  end

  items = /[0-9a-zA-z]/

  a = 0
  b = string.length - 1
  while a < b
    if items.match(string[a]) && !items.match(string[b])
      b -= 1
    elsif !items.match(string[a]) && items.match(string[b])
      a += 1
    else
      if string[a].upcase != string[b].upcase
        return false
      end
      a += 1
      b -= 1
    end
  end

  return true

end

# Time Complexity: ?
# Space Complexity: ?
# def longest_prefix(strings)
#   raise NotImplementedError, "Not implemented yet"
# end

