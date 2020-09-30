# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string.downcase.gsub!(/[^a-z0-9\s]/i, '')   #removes all non-alphanumeric chars
  string.gsub!(/\s+/, '')    #removes spaces

  (string.size/2).times.all? { |i| string[i] == string[-i-1] }
  # if list.length == 0
  #   return 0
  # end
  # unique_items = 1
  # list.length.times do |index|
  #   if index != 0 && list[index - 1] != list[index]
  #     unique_items +=1
  #   end
  # end
  # return unique_items
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