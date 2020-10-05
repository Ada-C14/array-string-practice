
# Time Complexity: ? O(n) The time is based on input and is linear.
# Space Complexity: ? O(n) Still confused! But, the space use is not constant so it is O(n)
def is_palindrome(string)

  pattern = /[A-Z]/i

  char_arr = string.split("")
  alpha_arr = char_arr.select {|char| pattern =~ char}
  total_char = alpha_arr.length

  low = 0
  high = total_char - 1

  while low < high
    if alpha_arr[low].casecmp?(alpha_arr[high])
      low += 1
      high -=1
    else
      return false
    end
  end

  return true
  # raise NotImplementedError, "Not implemented yet"
end

# Time Complexity: ? O(n^2) = O(n) + (O(n) * O(n))  because there is one nested loop of length 'n'
# # Space Complexity: ? O(n) The space is determined by string.length and by control.length
def longest_prefix(strings)

  control = strings.min_by {|word| word.length }

  strings.each do |string|
    index = 0
    prefix = ""

    while index < control.length do
      if control[index] == string[index]
        prefix += control[index]
        index += 1
      else
        break
      end
    end

    return "" if control.empty?
    control = prefix
  end

  return control
end







