
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  index = -1

  string.downcase!
  string.gsub!(/[^A-Za-z]/, '')

  string.each_char do |letter|
    if letter == string[index]
      index -=1
    else
      return false
    end
  end
  return true

end


# Time Complexity: O(n^2)
# Space Complexity: O(1)
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

