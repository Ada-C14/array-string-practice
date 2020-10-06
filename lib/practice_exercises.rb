
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  index = -1

  string.downcase!
  string.gsub!(/[^A-Za-z]/, '')

  string.each_char do |letter|
    if letter == string[index]
      index -=1
    else
      return false
    end
  end
  return true

end


# Time Complexity: ?
# Space Complexity: ?


