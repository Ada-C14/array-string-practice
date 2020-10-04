# Time Complexity: O(n) - depends on the length of the string (array)
# Space Complexity: O(1) - returns true or false regardless of the size of the string

def is_palindrome(string)
  reverse = ""
  string.downcase!
  string.gsub!(/[^0-9a-z]/, '')

  if string.length <= 1
    return true
  else
    first = 0
    last = string.length - 1

    while first <= last
      temp = string[last]
      reverse += temp
      last -= 1
    end

    if reverse == string
      return true
    else
      return false
    end
  end
end

# Time Complexity: O(nm) - loops through two different arrays, first word and then all words
# Space Complexity: O(1) - returns the longest prefix regardless of the size of the strings array

def longest_prefix(strings)
  prefix = ""
  strings[0].each_char.with_index do |letter, index|
    strings.each do |string|
      return prefix if letter != string[index]
    end
    prefix += letter
  end
end