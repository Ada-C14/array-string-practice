
# Time Complexity: ?
# Space Complexity: ?
def is_palindrome(string)
  @string = string
  # downcase  & strip all the nonalphanumeric characters, and save as a new variable @alphanumeric_only_string
  @alphanumeric_only_string = @string.downcase.delete('^A-Za-z0-9')

  # convert @alphanumeric_only_string to an array @alphanumeric_array
  @alphanumeric_array = @alphanumeric_only_string.chars

  #iterate through array and compare first & last, then repeat for next ones
  i = 0
  j = @alphanumeric_array.length - 1
  sum_of_diff = 0
  until i == @alphanumeric_array.length
    if @alphanumeric_array[i] == @alphanumeric_array[j]
      #do nothing
    else
      sum_of_diff += 1
    end
    i += 1
    j -= 1
  end

  # returns true if the the sum_of_difference equals zero, false otherwise.
  sum_of_diff == 0 ? true : false

end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end
