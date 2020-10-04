
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string.downcase! #cannot have this in front of gsub or it will replace the word with nil if there are already downcase letters
  string.gsub!(/[^A-Za-z]/, '') #substitutes any non-letter characters with empty string

  string.each_char.with_index do |letter, index|
    if letter != string[string.length - 1 - index]
      return false
    end
  end

  return true
end

# Time Complexity: O(n*m)
# Space Complexity: O(1)
def longest_prefix(strings)
  prefix = ""

  strings[0].each_char.with_index do |letter, index|
    strings.each do |word|
      return prefix unless word[index] == letter
    end
    prefix << letter
  end
end
