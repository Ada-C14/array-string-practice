# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string.downcase.gsub!(/[^a-z0-9\s]/i, '')   #removes all non-alphanumeric chars
  string.gsub!(/\s+/, '')    #removes spaces

  (string.size/2).times.all? { |i| string[i] == string[-i-1] }
  
end

# Did not have time to complete all the way

# Time Complexity: O(n^2)
# Space Complexity: O(n) 
def longest_prefix(strings)
  prefix_string = ""
  strings.first.length.times do |index|
    string.each do |string|
      string[index]
    end
    return prefix_string
  end
end
