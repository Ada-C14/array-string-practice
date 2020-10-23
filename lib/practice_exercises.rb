
# Time Complexity: O(n)
# Space Complexity: O(n)
def is_palindrome(string)
  return true if string == ""

  letter_counter = 0
  new_string = string.downcase.gsub(/[^A-Za-z0-9]\s*/, '')
  new_string_array = new_string.chars
  length = new_string_array.length

  while letter_counter < length
    if new_string_array[letter_counter] == new_string_array[new_string_array.length - 1 - letter_counter]
      return true
    end
    letter_counter += 1
    return false
  end
end

# Time Complexity: O(n*m)
# Space Complexity: O(m)
def longest_prefix(strings)
  return '' if strings.empty?
  shortest_string = strings.min_by { |string| string.length }
  output = ""

  shortest_string.length.times do |i|
    letter = strings[0][i]
    p letter
    strings.each do |string|
      if letter != string[i]
        return output
      end
    end
    output << letter
  end
end

#   shortest_string.each_char.with_index do |string, i|
#     letter = strings[0][i]
#     if letter != string[i]
#       return output
#       else
#     end
#     output << letter
#   end
#   return output
# end




