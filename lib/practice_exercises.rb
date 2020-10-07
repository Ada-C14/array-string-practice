# Time Complexity: O(n)
# Space Complexity: constant
def is_palindrome(string)
  return true if string.empty? || string.length == 1

  # return everything that not match the pattern with an empty space
  string_modification = string.gsub(/[^a-zA-Z0-9]/, '').downcase

  index = 0
  while index < string_modification.length / 2
    if string_modification[index] == string_modification[string_modification.length - index - 1]
      index += 1
    else
      return false
    end
  end

  return true
end


#strings = [], ""
#strings = ['Hello'] 'Hello', ''
#strings = ['foo', 'bar'] ''
#strings = ['hello', 'hello'] 'hello'
#strings = ['abc', 'abcde'] 'abc'
#strings = ['abc', 'abcde', 'foo', 'foo']  'abc' or 'foo' or maybe even ['abc', 'foo']
#strings = ['abc', 'abcde', 'ab'] 'ab'
# Time Complexity: ?
# Space Complexity: ?
#strings = ['abc', 'abcde', 'abd']
#prefix = ""
# string_idx = 0
# char_idx = 0
# =? strings[1,0]
# =? strings[2,0]
# all true so, prefix += strings[0][0]

#handle when you run out of a string or is different

def longest_prefix(strings)
  string_index = 0
  char_index = 0
  longest_prefix = ""

  return longest_prefix if strings.empty?

  while  char_index < strings.length
    if strings[string_index][char_index] == strings[string_index + 1][char_index]
      longest_prefix += strings[string_index][char_index]
      char_index +=1
      string_index +=1
    else
      return ""
    end
  end

  return longest_prefix

end
