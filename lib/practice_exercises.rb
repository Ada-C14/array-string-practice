
# Time Complexity: n
# Space Complexity: n
def is_palindrome(string)
  new_string = string.chars.select { |letter| letter =~ /[a-zA-Z0-9]+/ }.join.downcase
  palindrome = true
  length = new_string.length
  count = 0
  reverse_count = length - 1

  while count < length
    if new_string[count] == new_string[reverse_count]
      count +=1
      reverse_count -= 1
    else
      palindrome = false
      break
    end
  end

  return palindrome
end

# Time Complexity: ?
# Space Complexity: ?
# What if input is : ['flower', 'dog', 'flight']?
def longest_prefix(strings)
  match = ""
  length = strings.length
  smallest_word = strings.min_by { |x| x.length }
  # puts "smallest word : #{smallest_word}"

  # compare index of smallest word to the same index of each word in the array, if true return count, compare count to strings length, add to the match string, if false don't add
  smallest_word.length.times do |letter_index|
    count = 0
    strings.each do |word|
      next if word == smallest_word
      # puts "word : #{word}", "word letter : #{word[letter_index]}"

      if smallest_word[letter_index] == word[letter_index]
        count += 1
        # puts "count : #{count} / #{length}"
      else
        break
      end

    end

    if count == length - 1
      match << smallest_word[letter_index]
    elsif strings.count(smallest_word) == length
      match = smallest_word
    end
  end

  return match
end

# p longest_prefix(["carborator","carvonulted","carsome", "calsome"])