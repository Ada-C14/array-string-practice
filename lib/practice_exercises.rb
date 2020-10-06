
# Time Complexity: O(n); n + n/2 reduces to n
# Space Complexity: O(n) when modifying alphanumeric_string
def is_palindrome(string)
  return true if string.empty?

  alphanumeric_string = ""
  # Regex pattern for alphanumeric digits is /[A-Z0-9]/i
  string.each_char { |char| alphanumeric_string << char.downcase if (/[A-Z0-9]/i).match(char) }

  i = 0
  j = alphanumeric_string.length - 1
  while i < j
    return false if alphanumeric_string[i] != alphanumeric_string[j]
    i += 1
    j -= 1
  end

  return true
end

# Time Complexity: O(n * m) where n is length of the shortest string
# Space Complexity: O(n); worst case is appending all characters from the shortest string
def longest_prefix(strings)
  prefix = ""
  shortest_string = strings.min_by { |string| string.length }

  shortest_string.length.times do |i|
    strings.each do |string|
      return prefix if shortest_string[i] != string[i]
    end
    prefix << shortest_string[i]
  end

  return prefix
end

