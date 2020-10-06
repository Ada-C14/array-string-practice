
# Time Complexity: 0(n), where n is the length of the string
# The loop in this method get ran 1/2n
# dropping the coefficient will be O(n)
# Space Complexity: 0(1)
# uses constant amount of memory
def is_palindrome(string)
  # replace all non letters with empty string
  new_string = string.upcase.gsub(/[^A-Za-z]/, '')

  # a starts at index 0
  # b is the last index of the string
  a = 0
  b = new_string.length - 1

  # compares each letter starting at the ends of the string
  # for every loop, a increases by one and b decreases by one
  while a <= b
    if new_string[a] != new_string[b]
      return false
    end

    a += 1
    b -= 1
  end

  return true
end

# Time Complexity: O(n*m)
# n is the length of the shortest string
# m is the length of the strings array
# Space Complexity: O(1)
# uses constant amount of memory
def longest_prefix(strings)
  # found the string with the shortest length
  shortest_string = strings.min_by { |string| string.length }

  output = ""

  # using the length of the shortest string
  # to determine how many loops
  shortest_string.length.times do |i|
    # letter to compare with the rest of the strings at the same index
    letter = strings[0][i]

    strings.each do |string|
      # if the letters don't match
      # it will return the output at that moment
      if letter != string[i]
        return output
      end
    end

    # if the letter was compared
    # with all of the other string at the same index will no problems
    # the letter will be shoveled to output
    output << letter
  end

  return output
end

