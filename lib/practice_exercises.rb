
# Time Complexity: O(n) - not entirely sure about the regex engine
# Space Complexity: O(n)
def is_palindrome(string)

  return true if string.length <= 1

  string.match?(/[[:punct:]]|[[:space:]]/)
  array = string.downcase.split(/[[:punct:]]|[[:space:]]/)
  string = "".concat(*array)

  index = 1
  string.each_char do |char|
    return false if char != string[-index]
    index += 1
    break if index >= string.length / 2
  end
  return true
end

# Time Complexity: O(nm + nlog n)
# Space Complexity: O(1)

def longest_prefix(strings)
  prefix = ""

  strings.sort { |string| string.length }

  strings[0].length.times do |i|
    strings.each do |string|
      return prefix if string[i] != strings[0][i]
    end
    prefix << strings[0][i]
  end
  return prefix
end

