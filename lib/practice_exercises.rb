
# Time Complexity: log(n)
# Space Complexity: O(1)
def is_palindrome(string)
  string.downcase!
  string.gsub!(/[^A-Za-z]/, '')
  (string.length / 2).times do |i|
    return false if string[i] != string[string.length - 1 - i]
  end
  return true
end

# Time Complexity: mlog(n)
# Space Complexity: O(n)
# I tried to come up with a binary, couldn't get my solution to work, ended up
# finding this solution online: https://leetcode.com/problems/longest-common-prefix/discuss/292306/ruby-100-faster-than-ruby-(binary-search)
# tweeked to get better understanding and to reduce time complexity
def common_prefix?(strings, string1, low, mid)
  slice1 = string1.slice(low, mid - low + 1)
  # do all of the strings have the slice1 prefix?
  strings.all? { |string| string.slice(low, mid - low + 1) == slice1 }
end

def longest_prefix(strings)
  return "" if strings.empty?
  return strings.first if strings.length == 1
  # prefix can't be bigger than the shortest string. is this
  min_length = strings.min_by { |string| string.length }.length

  # index of first letter
  low = 0
  # index of last letter of shortest word
  high = min_length - 1

  # first string in the strings array
  string1 = strings.first
  prefix = ""

  while low <= high do
    mid = (low + high) / 2
    if common_prefix?(strings, string1, low, mid)
      prefix << string1.slice(low, mid - low + 1)
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return prefix
end