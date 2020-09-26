# frozen_string_literal: true

# Pauline Chane (@PaulineChane on GitHub)
# Ada Developers Academy C14
# Data Structures - practice_exercises.rb
# 09/29/2020

# Time Complexity: O(n). In the worst case scenario for a long string of special characters, the while loop will move
#                  over one character per loop until the loop is exited, the two lhs/rhs indices meet, or the two
#                  rhs/lhs indices crossover. In this scenario, there will be string.length loops maximum. With the only
#                  other operation, string.length, being a non-nested additive O(N) operation that depends on the length
#                  of the string, the time complexity is about 2N, or O(N) for short.
# Space Complexity: O(1). Only three variables, valid_char, lhs, and rhs are created, none of which are required to
#                   expand their memory space depending on the length of the string, constantly occupying the same
#                   amount of memory. This means space complexity is constant.
def is_palindrome(string)
  valid_char = "abcdefghijklmnopqrstuvwxyz0123456789"
  # FIX FOR PUNCTUATION
  lhs = 0
  rhs = string.length - 1 # O(N) operation for length

  while lhs < rhs do # O(N) operation because max. loops ~= length of string
    # break into next loop if rhs or lhs are not a valid char
    if !valid_char.include?(string[lhs].downcase)
      lhs += 1
    elsif !valid_char.include?(string[rhs].downcase)
      rhs -= 1
    # if hits this block, now compare characters
    elsif string[lhs].downcase == string[rhs].downcase
      # increment to next character over
      lhs += 1
      rhs -= 1
    else
      return false
    end
  end

  return true
end

# Time Complexity: O(n^2) Although there is an O(n) operation when strings.length is called in line 47, this is outside
#                  of the nested while/each loop and not the most expensive operation. The most expensive operation takes
#                  an outer while loop that at worst case scenario runs as long as the first string of the array of
#                  strings, or O(n) -- so essentially, like the string.length operation. HOWEVER, for every loop to
#                  iterate through each character of the string, this character most be compared to characters at the
#                  same position for every other string in the strings array, created a nested for loop with an O(N)
#                  operation to go through every iteration of the outer while loop -- this is the equivalent of
#                  traversing line by line in a 2-D array, or O(n) * O(n) = O(n^2).
# Space Complexity: O(n) The length of prefix will change depending on how much of the first n letters of the first
#                   string in the strings array appear in the remaining strings, worst case scenario being all letters.
#                   This means prefix will expand and take up more memory (here, we should treat prefix similarly to
#                   an array of characters, like C-strings) depending on the length of strings[0], an O(n) operation
#                   that is also output from the function.
def longest_prefix(strings)
  prefix = "" # shovel empty strings
  i = 0
  # iterate through a while loop defined by num. characters in first string
  if strings.length == 1 # O(n) operation to find length
    return strings[0]

  elsif !(strings.empty? || strings[0].empty?)
    # outer loop iterates through string O(n)
    while i < strings[0].length
      # inner loop iterates through each string O(n) within O(n)
      strings.each do |string|
        # check for strings shorter than first string or mismatch in character
        if string[i].nil? || strings[0][i] != string[i]
          return prefix
        end
      end
      # shovel into prefix and increment i
      prefix += strings[0][i]
      i += 1
    end
  end

  return prefix
end