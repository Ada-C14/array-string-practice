# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  if string.empty?
    return true
  else
    half_string_length = string.length / 2

    i = 0 # counting from the start of the array
    j = -1 # counting from the end of the array

    half_string_length.times do
      # if character at index i is a not an alphabetic character, increment i
      until /[A-Z]/i =~ string[i]
        i += 1
      end

      # if character at index j is a not an alphabetic character, decrement j
      until /[A-Z]/i =~ string[j]
        j -= 1
      end

      return false unless string[i].casecmp(string[j]) == 0
    end

  end

  return true
end

# Time Complexity: O(m*n) where m is the length of the shortest string and n is the length of the array of strings
# Space Complexity: O(m) where m is the length of the shortest string
def longest_prefix(strings)
  reference_string = strings[0]
  matched = true
  i = 0

  while matched && reference_string[i] # dependent on m, the length of the reference string
    strings.each do |string_to_compare|
      if string_to_compare[i] != reference_string[i]
        matched = false
        return reference_string[0...i]
      end
    end

    i += 1
  end

  return reference_string[0...i] # creates a new string so that the original string is not modified
end

# ~~~ Notes ~~~
# array = ["flower","flow","flight"]
# puts "array's id is #{array.object_id}"
# first_element = array[0]
# second_element = array[1]
# third_element = array[2]
# puts "first_element's id is #{first_element.object_id}"
# puts "second_element's id is #{second_element.object_id}"
# puts "third_element's id is #{third_element.object_id}"
#
# puts "section's id is #{array[0][0...3].object_id}"
#
# # array's id is 70312473660380
# # first_element's id is 70312473660440
# # second_element's id is 70312473660420
# # third_element's id is 70312473660400
# # section's id is 70312473660000 DIFFERENT so returning a section of a string makes a new string object