
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  letters = string.downcase.scan(/\w/)
  first = 0
  last = letters.length - 1

  until first >= last
    if letters[first] != letters[last]
      return false
    end

    first += 1
    last -= 1
  end

  return true
end

# Time Complexity: O(nm)
# Space Complexity: O(m)
def longest_prefix(strings)
  first_word = strings[0]
  prefix = ""

  first_word.length.times do |i|
    char = first_word[i]

    strings[1..-1].each do |word|
      if word[i] != char
        return prefix
      end
    end

    prefix << char
  end

  return prefix
end
