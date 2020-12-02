
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  if string.nil?
    return true
  end

  new_string = string.downcase.gsub(/\W+/, '')
  i = 0
  j = new_string.length - 1
  while i <= j
    if new_string[i] == new_string[j]
      i += 1
      j -= 1
    else
      return false
    end
  end
  return true
end

# Time Complexity: O(n)
# Space Complexity: O(n)
def longest_prefix(strings)
  prefix = ""
  strings[0].length.times do |i|
    letter = strings[0][i]
    strings[1..-1].each do |word|
      if word[i] != letter
        return prefix
      end
    end
    prefix += letter
  end
  return prefix
end
