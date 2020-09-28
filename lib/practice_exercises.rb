
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
  prefix = strings[0]

  strings[1..-1].each do |word|
    while word.index(prefix) != 0
      prefix = prefix[0...-1]
    end
  end

  return prefix
end

