# Helper method for is_palindrome
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

##########################################

# Time Complexity: O(n*m)
# >> each_char is O(n) where n is the length of the first string in the array
# >> inner loop is O(m) where m in the size of the strings array (num of strings incl in array)
# Space Complexity: O(n) where n is the length of the first string in the array
# >> common_prefix is a string with up to length n (assuming all other strings are length n or longer)
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  common_prefix = ""
  if strings.empty?
    return common_prefix
  end

  strings[0].each_char.with_index do |char, index|
    (1...strings.size).each do |arr_position|
      if char != strings[arr_position][index]
        return common_prefix
      end
    end
    common_prefix << char
  end

  return common_prefix
end

