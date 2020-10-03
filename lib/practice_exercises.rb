
# Time Complexity: O(n)
# I have a loop that's dependant on the length of the string.
# Space Complexity: O(n) because I'm creating a new string based on the input.
def is_palindrome(string)
  string = string.gsub(/[^0-9a-zA-Z]/, '').downcase
  first = 0
  last = string.length - 1
  until first >= last
    return false if string[first] != string[last]
    first += 1
    last -= 1
  end
  return true
end

# Time Complexity: O(n * m) where n is the length of an array and m is the length of a given string
# worst case would be O(n^2), however if n becomes sufficiently large compared to m
# O(n) would be more realistic.
# Space Complexity: O(1), not creating new structures, just using variables & integers.
def longest_prefix(strings)
  return "" if strings.nil? || strings.empty?

  (strings[0].length).times do |index|
    char = strings[0][index]
    strings.each do |string|
      if index == string.length || string[index] != char
        return string[0...index]
      end
    end
  end
  return strings[0]
end

