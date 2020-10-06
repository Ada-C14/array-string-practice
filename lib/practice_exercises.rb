
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  # raise NotImplementedError, "Not implemented yet"
  if string == ""
    return true
  end

  string = string.downcase.tr('.,:;?/|~!@#$%^&*() ', '')

  index = 0
  while index <= string.length / 2 do
    if string[index] != string[string.length - index - 1]
      return false
    end
    index += 1
  end
  return true
end

string = "!@#$%^&*() racecar "
puts "#{is_palindrome(string)}"

# Time Complexity: O(n^2)
# Space Complexity: O(n)
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  #
  return "" if strings.empty? || strings.nil?

  prefix = strings.first
  strings.each do |word|
    i = 0
    while i < prefix.length && prefix[i] == word[i]
      i += 1
    end
    prefix = prefix[0...i]
  end

  return prefix
end

