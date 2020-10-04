
# Time Complexity: O(n) The while loop
# Space Complexity: O(1), it doesn't require use of extra memory.
def is_palindrome(string)
  valid_chars = string.gsub(/[^a-z^0-9]/i, '').downcase.split("")
  i = 0
  j = valid_chars.length - 1
  while i < j
    unless valid_chars[i] == valid_chars[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end


# Time Complexity: O(n) Only one loop and depends on the size of the strings
# Space Complexity: O(1) it doesn't require use of extra memory
def longest_prefix(strings)
  prefix = ""
  i = 0
  if strings.length == 1
    return strings[0]
  end

  while i < strings[0].length
    strings.each do |string|
      if string[i].nil?
        return prefix
      elsif strings[0][i] != string[i]
        return prefix
      end
    end
    prefix += strings[0][i]
    i += 1
  end
  return prefix
end

