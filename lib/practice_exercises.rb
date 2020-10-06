
# Time Complexity: O(n^2)
# Space Complexity: O(1)
def is_palindrome(string)
  words = ""
  string.downcase.each_char do |char|
    if char.match? /[0-9a-z]/
      words += char
    end
  end

  words.each_char.each_with_index do |char, i|
    unless words[-1-i] == char
      return false
    end
  end
  true
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  if strings.empty?
    return ''
  end

  string1= strings.min
  string2 = strings.max

  string1.each_char.with_index do |char, i|
    if char != string2[i]
      return string1[0...i]
    end
  end
  return string1
  end
