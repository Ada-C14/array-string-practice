
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


# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  i = 0
  prefix = []
  letters = strings.map(&:chars)
  pp letters
  if letters[i].include?(letters[i+1])
    
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
end


