# sources:
# https://stackoverflow.com/questions/17689155/how-to-ignore-nonword-charcters-in-ruby

# Time Complexity: O(n) where n depends on size of .gsub?
# Space Complexity: O(n) where n depends on size of .gsub?
def is_palindrome(string)
  string = string.gsub(/\W/, "").downcase # modify string without non word characters and spaces
  x = 0
  i = (string.length - 1)
  until x >= i
    if string[x] != string[i]
      return false
    end
    x += 1
    i -= 1
  end
  return true
end

# Time Complexity: O(nm) where n is strings size, m is smallest word size?
# Space Complexity: 0(n) where n is smallest word size?
def longest_prefix(strings)
  return "" if strings.empty?
  prefix = ""
  smallest_word = strings.min_by { |word| word.length } # start with smallest word
  for i in 0..smallest_word.length-1
    if strings.all? { |word| word[i] == smallest_word[i] } # if the index matches the same index of the other words
      prefix += smallest_word[i] # then append the index value to the prefix
    else
      break # otherwise index is not in all words, so stop
    end
  end
  return prefix
end

