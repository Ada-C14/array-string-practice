
# Time Complexity: n
# Space Complexity: n
def is_palindrome(string)
  new_string = string.chars.select { |letter| letter =~ /[a-zA-Z0-9]+/ }.join.downcase
  palindrome = true
  length = new_string.length
  count = 0
  reverse_count = length - 1

  while count < length
    if new_string[count] == new_string[reverse_count]
      count +=1
      reverse_count -= 1
    else
      palindrome = false
      break
    end
  end

  return palindrome
end

# Time Complexity: ?
# Space Complexity: ?
# What if input is : ['flower', 'dog', 'flight']?
def longest_prefix(strings)
  # match = ""
  # length = strings.length
  # smallest_word = strings.min_by { |x| x.length }
  #
  #

  return match
end

