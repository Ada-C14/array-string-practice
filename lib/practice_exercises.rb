
# Time complexity: O(n)
# Space complexity: o(n)
def is_palindrome(string)

  if string.include?(" ")
    letters = string.downcase.gsub(/[^a-z ]/, '').split(" ").join.chars

    length = letters.length

    count_front =  0
    count_back = length - 1
    reverse_letters = letters.clone
    until count_front >= count_back
      temp = reverse_letters[count_front]
      reverse_letters[count_front] = reverse_letters[count_back]
      reverse_letters[count_back] = temp
      count_front += 1
      count_back -= 1
    end
    if letters == reverse_letters
      return true
    else false
    end
  end

  letters = string.chars
  if letters.length == 1
    return true
  end

  length = letters.length


  count_front =  0
  count_back = length - 1
  reverse_letters = letters.clone
  until count_front >= count_back
    temp = reverse_letters[count_front]
    reverse_letters[count_front] = reverse_letters[count_back]
    reverse_letters[count_back] = temp
    count_front += 1
    count_back -= 1
  end

  if letters == reverse_letters
    return true
    else false

  end

end


# Time Complexity: O(nm)
# Space Complexity: O(n)
def longest_prefix(strings)

  control = strings.min_by {|word| word.length}
  strings.each do |string|
  prefix = ""
  index = 0

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



  # letters.each do |word|
  #   pp word
  #   # pp letters[i]
  #   if word[i] == word[i + 1]
  #     prefix << word
  #     else puts "no match"
  #   end
  #   i += 1
  # end
  # pp prefix



