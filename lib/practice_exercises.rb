
# Time Complexity: O(n)
# Space Complexity: O(n)
#
def is_palindrome(string)

  array = string.split(//)

  alphanumeric = /[\w]/i
  least = 0
  greatest = array.length - 1

  while least < greatest

    until alphanumeric.match(array[least])
      least += 1
    end
    until alphanumeric.match(array[greatest])
      greatest -= 1
    end

    if array[least].downcase != array[greatest].downcase
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
