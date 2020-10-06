
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)
  # raise NotImplementedError, "Not implemented yet"
  string = string.gsub(/\W|\_/, "").downcase

  first = 0
  last = string.size - 1
  while first < last
    if string[first] == string[last]
      first += 1
      last -= 1
    else
      return false
    end
  end
  return true

end


# Time Complexity: O(n)
# Space Complexity: O(n)
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  longest_prefix = ""
  idx = 0
  letter = strings[0][idx]

  until letter == nil
    strings.each do |string|
      if string[idx] != letter
        return longest_prefix
      end
    end
    longest_prefix += letter
    idx += 1
    letter = strings[0][idx]
  end
  return longest_prefix
end

