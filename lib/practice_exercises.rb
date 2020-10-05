# Time Complexity: ? O(n)
# Space Complexity: ? O(n)
def is_palindrome(string)
string = string.gsub(/[^0-9a-zA-Z]/, '').downcase
  if string.length <= 1
    true
  else
    if string[0] == string[-1]
      is_palindrome(string[1..-2])
    else
      false
    end
  end
end

# Time Complexity: ? O(n+m)
# Space Complexity: ? O(n)
def longest_prefix(strings)
  prefix = ""
  i = 0
  strings[0].each_char do |letter|
    strings.each do |word|
      return prefix unless word[i] == letter
    end
    prefix << letter
    i += 1
  end
end