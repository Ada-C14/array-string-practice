
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  return true if string.empty? || string.length == 1
  string.downcase!
  split = string.split("")
  characters = split.select{ |char| /[a-z]/.match?(char) }

  mid = characters.length / 2
  mid.times do |i|
    return false if characters[i] != characters[(characters.length - 1) - i]
  end

  return true
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  longest = ""

  strings[0].length.times do |i|
    current_letter = strings[0][i]
    strings.each do |word|
      return longest if current_letter != word[i]
    end
    longest += current_letter
  end

  return longest
end

