
# Time Complexity: o(n)
# Space Complexity: o(n)
def is_palindrome(string)
  reverse_string = []
  split_string = string.downcase.scan(/[a-z]/)

  split_string.each_index{|i| reverse_string[i] =  split_string[split_string.length - 1 - i]}

  return split_string == reverse_string
end

# Time Complexity: o(n^2)
# Space Complexity: o(n^2)
def longest_prefix(strings)
  letter_columns = Array.new(strings.min_by{|string| string.length}.length){|arr| [] }
  letter_columns.each_index{|i| strings.each{|string| letter_columns[i] << string[i]}}

  prefix = ""
  i = 0

  while(i < letter_columns.length && letter_columns[i].uniq.length <= 1)
    prefix += letter_columns[i][0]
    i += 1
  end

  return prefix
end

