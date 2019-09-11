
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  string.downcase!
  letters = string.split("")

  last = letters.length - 1
  first = 0

  while(first < last)
    if letters[first] !~ /[a-z]/
      first += 1
    elsif letters[last] !~ /[a-z]/
      last -= 1
    elsif letters[first] != letters[last]
      return false
    else
      first += 1
      last -= 1
    end
  end
  return true
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  prefix = strings.first
  prefix_regex = Regexp.new "^#{prefix}"

  strings.each do |string|
    while string !~ prefix_regex
      prefix = prefix[0...-1]
      prefix_regex = Regexp.new "^#{prefix}"
    end
  end

  return prefix
end

