def convert_string_array(string)
  array = []
  string.each_char do |char|
    array << char.downcase if /[A-Za-z0-9]/.match(char)
  end
  return array
end


# Time Complexity: O(n)
# >> O(n) to convert string to array,
# >> O(n/2) to compare first half elements in array to second half
# Space Complexity: O(n) - creation of array from string; O(1) for the index vars
def is_palindrome(string)
  # raise NotImplementedError, "Not implemented yet"
  array = convert_string_array(string)
  start_ind = 0
  end_ind = array.size - 1

  while start_ind < end_ind
    if array[start_ind] != array[end_ind]
      return false
    end

    start_ind += 1
    end_ind -= 1
  end

  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

