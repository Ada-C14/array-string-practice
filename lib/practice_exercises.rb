# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)

  return true if string.length == 0 || string.length == 1

  string_values = /[0-9a-zA-z]/


  i = 0
  j = string.length - 1
  while i < j
    if string_values.match(string[i]) && !string_values.match(string[j])
      j -= 1
    elsif !string_values.match(string[i]) && string_values.match(string[j])
      i += 1
    else
      return false if string[i].upcase != string[j].upcase
      i += 1
      j -= 1
    end
  end

  return true

end

# Time Complexity: O(nm)
# Space Complexity: O(m)
def longest_prefix(strings)
  prefix = ""
  index = 0

  strings[0].each_char do |letter|
    strings.each do |word|
      return prefix unless word[index] == letter
    end
    prefix << letter
    index += 1
  end

end
