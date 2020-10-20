
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string.gsub!(/[^a-zA-Z0-9]/,"")
  string.downcase!
  left = 0
  right = string.length - 1

  while left < right
    return false unless string[left] == string[right]
    left += 1
    right -= 1
  end

  return true
end


# Time Complexity: O(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  return "" if strings.size == 0
  #return strings[0] if strings.size == 1
  sorted = strings.sort
  p sorted
  prefix = ""
  str_begin = sorted[0]
  str_end = sorted[-1]
  return "" if str_begin == ""
  i = 0
  loop do
    if (str_begin[i] == str_end[i]) && str_begin[i] && str_end[i] #check if the letter exists booleans
      prefix << str_begin[i]
    else
      break
    end
    i+=1
  end
  return prefix
end

