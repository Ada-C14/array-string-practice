# sources:
# https://stackoverflow.com/questions/17689155/how-to-ignore-nonword-charcters-in-ruby

# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  string = string.gsub(/\W/, "").downcase
  x = 0
  i = (string.length - 1)
  until x >= i
      if string[x] != string[i]
        return false
      end
        x += 1
        i -= 1
  end
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end