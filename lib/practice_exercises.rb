# Time Complexity:
# Space Complexity:

def is_palindrome(string)
  reverse = ""
  string.downcase!
  string.gsub!(/[^0-9a-zA-Z]/, '')

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


# Time Complexity:
# Space Complexity:

def longest_prefix(strings)
  prefix = ""
  strings[0].each_char.with_index do |letter, index|
    strings.each do |string|
      return prefix if letter != string[index]
    end
    prefix += letter
  end
end