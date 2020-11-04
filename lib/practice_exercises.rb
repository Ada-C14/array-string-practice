
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)

  reduced_string = string.downcase.gsub(/[^A-Za-z]/, "")

  i = 0
  while i < (reduced_string.length - 1)
    if reduced_string[i] != reduced_string[reduced_string.length - i - 1]
      return false
    end
    i += 1
  end

  return true
end


# Time Complexity: O(n^2)
# Space Complexity: O(n)
def longest_prefix(strings)
  prefix = ""
  i = 0

  return prefix if strings.empty?

  strings[0].each_char do |letter|
    strings.each do |word|
      return prefix unless word[i] == letter
    end
    prefix << letter
    i += 1
  end

end