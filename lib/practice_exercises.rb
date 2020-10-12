
# Time Complexity: O(n), linear time, runtime increases as input size increases. 1:1 relation to input size.
# Space Complexity: O(n), new array created
def is_palindrome(string)
  #raise NotImplementedError, "Not implemented yet"
  new_string = string.downcase.gsub(/[^a-z\s]/i, '')
  i = 0
  if new_string[i] == new_string[i - 1]
    return true
  else
    return false
  end
  i += 1
end

# Time Complexity: O(n*m)? 
# Space Complexity: O(1)
def longest_prefix(strings)
  #raise NotImplementedError, "Not implemented yet"
  return '' if strings.empty?
  min_str = strings.min
  max_str = strings.max
  min_str.each_char.with_index do |char, i|
    if char != max_str[i]
      return min_str[0...i]
    end
  end
  return min_str
end
