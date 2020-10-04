# Kareha Agesa

# Time Complexity: O(1/2n) = O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  string = string.downcase.gsub(/[^A-Za-z0-9]/, '')   # Space: O(n)?, Time O(n)?
  length = string.length                              # Space: 0(1), Time O(n)
  (string.length/2).times do |i|                      # Time: O(1/2n)
    return false if string[i] != string[length-1]
    length -= 1                                       # Space: 0(1)
  end
  return true
end

# Time Complexity: O(n^2)?
# Space Complexity: O(n)
def longest_prefix(strings)
  prefix = ""

  # only loop the length of the shortest word
  length = strings.min_by{|x| x.length}.length    # Time: O(n)?

  length.times do |index|                         # Time: O(n)
    # access the <index> val of each string
    letter = strings.map{|string| string[index]}    # Time: O(n)??
    if letter.uniq.length == 1
      prefix += letter.uniq.join
    else
      return prefix
    end
  end
  return prefix

end