
# Time Complexity: ?   O(n): one loop, so the runtime will be affected by the length of the string.
# Space Complexity: ?  O(1): it takes a fixed amount of space that is not depend on the input.
def is_palindrome(string)
  # raise NotImplementedError, "Not implemented yet"
  return false if string.nil? 
    string = string.downcase.split(//).select {|char| (/[a-z0-9]/).match? (char)}.join
    index = 0
    while index <= (string.length / 2)
        return false if string[index] != string[string.length - 1 - index]
        index += 1
    end
    return true
end

# Time Complexity: ?    O(n): two loops, but the second loop is a fixed number, we could say the runtime would be affected mainly by the length of the array. 
# Space Complexity: ?   O(1): it takes a fixed amount of space that is not depend on the input. 
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  return "" if strings.nil? || strings.empty?
    shortest_word_for_longest_prefix = strings.min_by {|word| word.length }
    strings.each do |word|
        prefix = String.new
        index = 0
        while index < shortest_word_for_longest_prefix.length
            break if word[index] != shortest_word_for_longest_prefix[index]
            prefix += shortest_word_for_longest_prefix[index]
            index += 1
        end
        return "" if prefix.empty?
        shortest_word_for_longest_prefix = prefix
    end
    return shortest_word_for_longest_prefix
end

