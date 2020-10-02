
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  alphanumeric_chars = string.gsub(/[^a-z^0-9]/i, '').downcase.split("")
  i = 0
  j = alphanumeric_chars.length - 1
  while i < j
    return false unless alphanumeric_chars[i] == alphanumeric_chars[j]
    i += 1
    j -= 1
  end

  return true
end

# Time Complexity: 0(n)
# Space Complexity: O(1)
def longest_prefix(strings)
  i = 0
  return "" if strings.empty?
  strings[0].length.times do
    char = strings[0][i]
    strings.drop(1).each do |string|
      return strings[0][0, i] if string[i] != char
    end
    i += 1
  end
  return strings[0][0, i]
end

