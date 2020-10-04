
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string.downcase! #cannot have this in front of gsub or it will replace characters that are already downcase with nil
  string.gsub!(/[^A-Za-z]/, '') #substitutes any non-letter characters with empty string

  string.each_char.with_index do |letter, index|
    if letter != string[string.length - 1 - index]
      return false
    end
  end

  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)



end
