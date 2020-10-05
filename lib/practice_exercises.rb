
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)

  alphanumeric_char = string.downcase.gsub(/[^a-z0-9]/i, '')

  if string == nil
    return true
  elsif alphanumeric_char == reverse_string(alphanumeric_char)
    return true
  else
    return false
  end
end

# helper method to reverse the string
# Time Complexity: O(n)
def reverse_string(string)
  str_arr = string.chars
  i = 0
  j = str_arr.length - 1

  while i < j
    temp = str_arr[i]
    str_arr[i] = str_arr[j]
    str_arr[j] = temp
    i += 1
    j -= 1
  end
  return str_arr.join
end


# Time Complexity: ?
# Space Complexity: ?
#
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"

end






