
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string = string.gsub(/[^[:alnum:]]/, '').downcase
  min = 0
  max = string.length - 1

  until min > max
    if string[min] == string[max]
      min += 1
      max -= 1
    else
      return false
    end
  end
  return true
end

# Time Complexity: O(n*m)
# Space Complexity: O(m)
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


