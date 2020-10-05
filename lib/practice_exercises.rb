# Time Complexity: O(n)
# Space Complexity: O(1)

def is_palindrome(string)
  string.downcase!
  string.gsub!(/[^a-z0-9\s]/i, '')    #removes all non-alphanumeric chars
  string.gsub!(/\s+/, '')    #removes spaces

  (string.size/2).times.all? do |index|
    string[index] == string[-index-1]  #returns true or false
  end

end


# Time Complexity: O(n)
# Space Complexity: O(n)

def longest_prefix(strings)
  return '' if strings.empty?
  min, max = strings.minmax #returns a new 2-element array containing the minimum & maximum length strings

  idx = min.size.times do |index|  #assigns 'idx' the value of the index num of the letter in the min string that is the last to match the one at same index of in max
    break index if min[index] != max[index]
  end

  return min[0...idx]
end

