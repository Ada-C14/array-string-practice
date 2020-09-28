
# Time Complexity: O(3n + n/2) == O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string = string.downcase                # .downcase TC = O(n)
  string = string.delete "^a-z"           # .delete TC = O(n)

  first = 0
  last = string.length - 1                # .length TC = O(n)

  until first >= last                     # loop TC = O(n/2) == O(n)
    if string[first] != string[last]
      return false
    end
    first += 1
    last -= 1
  end

  return true

end

# Time Complexity: O(n^2 + 2n) == O(n^2)???
# Space Complexity: O(n)
def longest_prefix(strings)
  num_words = strings.length - 1           # .length TC = O(n)
  word_length = strings[0].length          # .length TC = O(n)

  prefix = ""

  letter = 0
  while letter < word_length               # loop TC = O(n)
    current_letter = strings[0][letter]
    next_word = 1
    while next_word <= num_words            # loop TC = O(n)
      next_word_letter = strings[next_word][letter]
      if (next_word == num_words) && (current_letter == next_word_letter)
        prefix += strings[0][letter]
      elsif current_letter != next_word_letter
        return prefix
      end
      next_word += 1
    end
    letter += 1
  end

  return prefix
end