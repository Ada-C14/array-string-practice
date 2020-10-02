
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  if string.empty?
    return true
  else
    half_string_length = string.length / 2

    i = 0 # counting from the start of the array
    j = -1 # counting from the end of the array

    # until back_counter - front_counter == -1
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
# Space Complexity: O(1)
def longest_prefix(strings)
  reference_string = strings[0]
  matched = true
  i = 0

  while matched
    if reference_string[i].nil?
      return reference_string[0...i]
    end

    strings.each do |string_to_compare|
      if string_to_compare[i] != reference_string[i]
        matched = false
        return reference_string[0...i]
      end
    end

    i += 1
  end

  return reference_string[0...i]
end