
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)

  if string.length == 0 || string.length == 1
    return true
  end

  items = /[0-9a-zA-z]/

  a = 0
  b = string.length - 1
  while a < b
    if items.match(string[a]) && !items.match(string[b])
      b -= 1
    elsif !items.match(string[a]) && items.match(string[b])
      a += 1
    else
      if string[a].upcase != string[b].upcase
        return false
      end
      a += 1
      b -= 1
    end
  end

  return true

end

# Time Complexity: O(n * m)
# Space Complexity: O(n)
def longest_prefix(strings)
  prefix = ""
  index = 0

  if strings.empty?
    return prefix
  end

  strings[0].each_char do |character|
    strings.each do |word|
      return prefix unless word[index] == character
    end
    prefix << character
    index += 1
  end

end

