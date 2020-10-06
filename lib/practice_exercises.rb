
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  string = string.split('').join('')
  reverse_string = string.clone
  i = 0
  j = length - 1
  while i < j
    temp = reverse_string[i]
    reverse_string[i] = reverse_string[j]
    reverse_string[j] = temp
    i += 1
    j -= 1
  end
  x = 0
  string.each do |letter|
    if letter != reverse_string[x]
      return false
    end
    x += 1
  end
  return true
end

# Time Complexity: O(1)
# Space Complexity: O(n)
def longest_prefix(strings)
  strings.sort!

  string_1 = strings[0].split('')
  string_2 = strings[-1].split('')

  prefix = ""
  i = 0
  until string_1[i] != string_2[i]
    if string_1[i] == string_2[i]
      prefix << string_1[i]
    end
    i += 1
  end

  return prefix
end

