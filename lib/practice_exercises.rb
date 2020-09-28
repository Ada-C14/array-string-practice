
# Time Complexity: 3 * O(n) + O(n/2) == O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  # .downcase TC = O(n)
  string = string.downcase
  # .delete TC = O(n)
  string = string.delete "^a-z"

  i = 0
  # .length TC = O(n)
  j = string.length - 1

  # loop TC = O(n/2) == O(n)
  until i >= j
    if string[i] != string[j]
      return false
    end
    i += 1
    j -= 1
  end

  return true

end

# Time Complexity: ?
# Space Complexity: O(n)
def longest_prefix(strings)
  prefix = ""
  letter = 0
  while letter < strings[0].length
    next_word = 1
    while next_word < strings.length
      current_word_letter = strings[0][letter]
      next_word_letter = strings[next_word][letter]
      if (current_word_letter == next_word_letter) && (next_word == 1)
        prefix += strings[0][letter]
      elsif (current_word_letter != next_word_letter)
        return prefix[0..-2]
      end
      next_word += 1
    end
    letter += 1
  end
  return prefix
end
