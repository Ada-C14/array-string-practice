
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  string.downcase!
  string_array = string.split("")
  allowed_characters = ("a".."z").to_a
  string_array.select! { |letter| allowed_characters.include?(letter) }
  i = 0

  while i <= string_array.length && !string_array[i].nil?
    return false if string_array.first != string_array.last

    string_array.pop
    string_array.shift
    i += 1
  end

  return true

end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

