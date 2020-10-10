# Time Complexity: 0(n), If the string gets longer, then the loop will take longer to execute.
# Space Complexity: 0(n), The downcase method is duplicating the string.
def is_palindrome(string)
  string = string.downcase.gsub(/[^a-z0-9]/i,"")
  if string.length == 0
    return true
  end

  low_value = 0
  high_value = string.length - 1
  while (low_value <= high_value) do
    if string[low_value] != string[high_value]
      return false
    else
      low_value += 1
      high_value  -= 1
    end
  end
  return true
end

# Time Complexity: O(n)
# Space Complexity: ???
def longest_prefix(strings)
  final_string = ""
  index = 0
  char = strings[0][index]

  while char != nil
    strings.each do |string|
      if string[index] != char
        return final_string
      end
    end

    final_string += char
    index += 1
    char = strings[0][index]
  end

  return final_string
end
