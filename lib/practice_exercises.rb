
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  raise ArgumentError 'Input is not a string' unless string.class == String
  return true if string == ""
  string.upcase!

  beg = 0
  fin = string.length - 1

  while beg < fin do
    if string[beg] =~ /[a-z0-9]/i && string[fin] =~ /[a-z0-9]/i
      return false if string[beg] != string[fin]
      beg += 1
      fin -= 1
    else
      beg += 1 unless string[beg] =~ /[a-z0-9]/i
      fin -= 1 unless string[fin] =~ /[a-z0-9]/i
    end
  end

  return true
end

# Time Complexity: O(m*n) + O(n) for min_by
# m = length of shortest word, n = number of input strings
# Not sure if this would be considered O(n) or O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  result = ""
  return "" if strings.empty?
  return "" if strings[0] == ""

  # Vertical scanning - initiate first character
  char = strings[0][0]
  short_string = strings.min_by { |string| string.length}

  # Max possible LCP is length of shortest string
  short_string.length.times do |char_index|
    char = strings[0][char_index] # Move char forward

    strings.each_with_index do |string, index|
      last = strings.length - 1
      return result if string[char_index].nil?

      if string[char_index] == char
        result << char if index == last
      else
        return result
      end

    end

  end
  return result
end

