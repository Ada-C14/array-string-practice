
# Time Complexity: O(n)
# Space Complexity: O(1)
def is_palindrome(string)

  string.downcase!
  string = string.gsub /[^a-z]/, ""
  string = string.chars

  i = 0
  x = string.length - 1
  until i == string.length / 2
    return false unless string[i] == string[x]
    i += 1
    x -= 1
  end
  return true
end


# Time Complexity: O(n)
# Space Complexity: O(1)
def longest_prefix(strings)

  array = []
  prefix = []

  i = 0
  x = strings.max_by { |string| string.length }.length
  x.times do
    strings.each_with_index do |string|
      string = string.chars
      array << string[i]
    end

    array.uniq!
    if array.length == 1
      prefix << array[0]
    elsif array.length != 1
      return prefix.join
    end

    array = []

    i += 1
  end

  return prefix.join
end
