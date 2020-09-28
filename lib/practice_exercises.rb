
# Time Complexity: O(n)
# Space Complexity: O(n), because we have an array of chars, and we store the char counts in a hash.
def is_palindrome(string)
  chars = string.downcase.scan(/\w/)
  char_counts = Hash.new(0)

  chars.each do |char|
    char_counts[char] += 1
  end

  return char_counts.values.all? { |chars| chars.even? } || char_counts.values.one? { |chars| chars.odd? }
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
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

