
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  if string == nil
    return true
  else
    string_arr = string.upcase.scan /\w/
    string_length = string_arr.length
    (string_length / 2).times do |i|
      return false if string_arr[i] != string_arr[string_length - i - 1]
    end
  end
  return true
end

# Time Complexity: O(nm) as in n times m, where n is the array size, and m is the prefix size.
# Space Complexity: O(m) m is the prefix size.
def longest_prefix(strings)
  prefix = ""
  shortest_word = strings.min_by {|word| word.length}

  shortest_word.length.times do |i|
    if strings.all? {|word| word[i] == shortest_word[i]}
      prefix += strings.first[i]
    else
      break
    end
  end

  return prefix
end

