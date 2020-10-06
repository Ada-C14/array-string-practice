# Time Complexity: O(n^2) because we have an if loop inside an until loop, both depend on n
# Space Complexity: O(n) because the size that the array takes up depends on its length, ie. n
def is_palindrome(string)
  @string = string
  # downcase  & strip all the nonalphanumeric characters, and save as a new variable @alphanumeric_only_string
  @alphanumeric_only_string = @string.downcase.delete('^A-Za-z0-9')

  # convert @alphanumeric_only_string to an array @alphanumeric_array
  @alphanumeric_array = @alphanumeric_only_string.chars

  # iterate through array and compare first & last, then repeat for next ones
  # technically we only have to go up to half of the length of the array but then we would have to divide up
  # the problem in two cases for arrays of even or odd lengths, so this will do
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


# Time Complexity:O(n^3) three nested loops, each not fixed
# Space Complexity: O(n) because @strings's size on disk varies according to the size of the input
def longest_prefix(strings)
  @strings = strings

  common = @strings[0]

  @strings.each do |string|

    i = 0
    common.length.times do |i|
      if common[i] == string[i]
        i += 1
      else
        common = common.slice(0, i)
      end
    end

  end

  return common

end