
# Time Complexity: n log(n)
# Space Complexity: n
def is_palindrome(string)
  #raise NotImplementedError, "Not implemented yet"

  pattern = /[A-Za-z]/
  all_chars = string.chars

  concat = []

  all_chars.each do |character|
    if pattern.match(character)
      concat << character.downcase
    end
  end

  if concat.length == 0 or concat.length == 1
    return true
  end

  i = 0
  j = concat.length - 1

  until j<=i do
    if concat[i] != concat[j]
      return false
    end
    i += 1
    j -= 1
  end

  return true
end


# Time Complexity: O = nm
# Space Complexity: O = nm
def longest_prefix(strings)
  #raise NotImplementedError, "Not implemented yet"
  prefix = []
  sorted = strings.sort_by {|x| x.length}

  strings.each do |word|
    i=0
    match = ""

    until i == sorted[0].length || strings[0][i] != word[i] do
      if strings[0][i] == word[i]
        match += strings[0][i]
      end
      i+=1
    end

    prefix << match
  end

  longest = prefix.sort_by {|x| x.length}

  return longest.first
end


