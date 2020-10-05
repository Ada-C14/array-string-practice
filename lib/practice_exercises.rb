
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  array = string.split(//)
  letters = /[\w]/i
  letter_array = array.select { |char| letters.match(char) }

  least = 0
  greatest = letter_array.length - 1
  while least < greatest
    if letter_array[least].downcase != letter_array[greatest].downcase
      return false
    end
    least += 1
    greatest -= 1
  end

  return true
end

# Time Complexity: O(n^2)
# Space Complexity: O(n)
def longest_prefix(strings)

  strings.each_with_index do |string, index|
    strings[index] = string.split(//)
  end

  prefix = ""
  index = 0
  long_string = (strings.max_by { |string| string.length }).length

  long_string.times do
    char = strings[0][index]

    strings.each do |string|
      return prefix if string[index] != char
    end

    prefix << char
    index += 1
  end

  return prefix
end