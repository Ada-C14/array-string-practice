
# Time Complexity: guess--O(n). Even it's a really big array, even though it's divided in half, will still take awhile to process through.
# Space Complexity: I'm not confident at all on this one. O(n)? I first put O(1), but I do think if it's a long array, then teh space need grows with n?
def is_palindrome(string)
  return true if string.length < 2
  simple_string = string.gsub(/\W+/, '').downcase #gsub returns a copy of the string without non-word characters
  array = simple_string.split("") #returns array of substrings
  i = 0
  j = array.length-1
  (array.length/2).times do
    if array[i] == array[j]
      i += 1
      j -= 1
    else
      return false
    end
  end
  return true
end

# Time Complexity: O(nlogn)--cut problem in half by only evaluating first and last values after arrays have been sorted.
# Space Complexity: O(1)--just a guess. no matter how large the array size is, the only thing we need to do is sort it into a new array. I think.
def longest_prefix(strings)

  return '' if strings.length == 0
  strings = strings.sort #returns new array
  return '' if strings[0][0] != strings[strings.length - 1][0]
  i = 0
  while i < strings[0].length
    if strings[0][i] != strings[strings.length - 1][i]
      break
    end
    i+=1
  end
  return strings[0][0..i-1]
end

